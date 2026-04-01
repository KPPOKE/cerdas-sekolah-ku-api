<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('semesters', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->string('nama');
            $table->uuid('tahun_ajaran_id');
            $table->boolean('aktif')->default(false);
            $table->timestamps();

            $table->foreign('tahun_ajaran_id')->references('id')->on('tahun_ajarans')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('semesters');
    }
};
