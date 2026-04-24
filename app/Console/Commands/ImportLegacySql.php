<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\File;

class ImportLegacySql extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'db:import-legacy {file=cerdas_sekolah_ku.sql}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Import legacy MySQL data from SQL file to SQLite';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $fileName = $this->argument('file');
        $filePath = base_path($fileName);

        if (!File::exists($filePath)) {
            $this->error("File not found: {$filePath}");
            return 1;
        }

        $this->info("Importing data from {$filePath}...");

        Schema::disableForeignKeyConstraints();

        $sql = File::get($filePath);
        
        // Basic cleaning
        $this->info("Cleaning SQL comments...");
        // Remove single line comments
        $sql = preg_replace('/^--.*$/m', '', $sql);
        // Remove multi-line comments
        $sql = preg_replace('/\/\*.*?\*\//s', '', $sql);
        
        // We need a way to split statements that doesn't break on semicolons inside strings.
        // But for a simple dump, let's try a regex that looks for INSERT INTO ... ;
        $this->info("Parsing INSERT statements...");
        
        // This regex looks for INSERT INTO followed by anything until a semicolon that is followed by a newline or end of file
        preg_match_all('/INSERT INTO `[^`]+` \([^\)]+\) VALUES.*?;/s', $sql, $matches);
        
        $statements = $matches[0] ?? [];
        $total = count($statements);
        $this->info("Found {$total} INSERT statements.");

        $bar = $this->output->createProgressBar($total);
        $bar->start();

        $success = 0;
        $failed = 0;

        foreach ($statements as $statement) {
            $statement = trim($statement);
            
            // Skip migrations table to avoid breaking the current migration state
            if (str_contains($statement, '`migrations`')) {
                $success++; // Count it as success to keep progress bar moving
                $bar->advance();
                continue;
            }

            try {
                // Convert MySQL escapes to SQLite
                // Replace \' with ''
                $statement = str_replace("\\'", "''", $statement);
                // Replace \" with "
                $statement = str_replace("\\\"", "\"", $statement);
                
                DB::statement($statement);
                $success++;
            } catch (\Exception $e) {
                $failed++;
                $this->newLine();
                $this->warn("Failed to execute statement starting with: " . substr(trim($statement), 0, 50) . "...");
                $this->error($e->getMessage());
                File::append(storage_path('logs/import_errors.log'), "FAILED STATEMENT:\n" . $statement . "\nERROR:\n" . $e->getMessage() . "\n\n");
            }
            $bar->advance();
        }

        $bar->finish();
        $this->newLine();

        Schema::enableForeignKeyConstraints();

        $this->info("Import completed!");
        $this->info("Success: {$success}");
        $this->info("Failed: {$failed}");
        
        if ($failed > 0) {
            $this->warn("Some statements failed. This might be due to duplicate IDs if you've already seeded the database.");
        }

        return 0;
    }
}
