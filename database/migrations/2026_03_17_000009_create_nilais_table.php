<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('nilais', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('siswa_id');
            $table->uuid('mata_pelajaran_id');
            $table->uuid('kelas_id');
            $table->uuid('semester_id');
            $table->integer('tugas')->default(0);
            $table->integer('uts')->default(0);
            $table->integer('uas')->default(0);
            $table->double('rata_rata')->default(0);
            $table->timestamps();

            $table->foreign('siswa_id')->references('id')->on('siswas')->onDelete('cascade');
            $table->foreign('mata_pelajaran_id')->references('id')->on('mata_pelajarans')->onDelete('cascade');
            $table->foreign('kelas_id')->references('id')->on('kelas')->onDelete('cascade');
            $table->foreign('semester_id')->references('id')->on('semesters')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('nilais');
    }
};
