<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('kelas', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->integer('tingkat');
            $table->string('nama_kelas');
            $table->uuid('guru_id')->nullable(); // wali kelas
            $table->timestamps();

            $table->foreign('guru_id')->references('id')->on('gurus')->onDelete('set null');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('kelas');
    }
};
