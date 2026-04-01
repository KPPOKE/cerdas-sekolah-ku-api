<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('pengajaran_gurus', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('guru_id');
            $table->uuid('kelas_id');
            $table->uuid('mata_pelajaran_id');
            $table->uuid('semester_id');
            $table->timestamps();

            $table->foreign('guru_id')->references('id')->on('gurus')->onDelete('cascade');
            $table->foreign('kelas_id')->references('id')->on('kelas')->onDelete('cascade');
            $table->foreign('mata_pelajaran_id')->references('id')->on('mata_pelajarans')->onDelete('cascade');
            $table->foreign('semester_id')->references('id')->on('semesters')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('pengajaran_gurus');
    }
};
