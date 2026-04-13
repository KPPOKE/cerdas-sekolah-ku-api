<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('ekstrakurikuler_absensis', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->foreignUuid('ekstrakurikuler_id')->constrained('ekstrakurikulers')->onDelete('cascade');
            $table->foreignUuid('siswa_id')->constrained('siswas')->onDelete('cascade');
            $table->date('tanggal');
            $table->string('status'); // hadir, izin, alfa
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ekstrakurikuler_absensis');
    }
};
