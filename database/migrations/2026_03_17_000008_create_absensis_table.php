<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('absensis', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('siswa_id');
            $table->uuid('kelas_id');
            $table->date('tanggal');
            $table->enum('status', ['hadir', 'alfa', 'sakit', 'izin']);
            $table->text('keterangan')->nullable();
            $table->timestamps();

            $table->foreign('siswa_id')->references('id')->on('siswas')->onDelete('cascade');
            $table->foreign('kelas_id')->references('id')->on('kelas')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('absensis');
    }
};
