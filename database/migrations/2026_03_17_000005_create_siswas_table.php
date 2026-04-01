<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('siswas', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('kelas_id');
            $table->string('nama_lengkap');
            $table->string('nisn')->unique()->nullable();
            $table->string('nik')->unique()->nullable();
            $table->string('tempat_lahir');
            $table->date('tanggal_lahir');
            $table->string('umur')->nullable();
            $table->string('status')->default('Aktif');
            $table->string('jenis_kelamin');
            $table->text('alamat');
            $table->string('no_telepon')->nullable();
            $table->string('kebutuhan_khusus')->nullable();
            $table->string('disabilitas')->nullable();
            $table->string('nomor_kip_pip')->nullable();
            $table->string('nama_ayah_kandung')->nullable();
            $table->string('nama_ibu_kandung')->nullable();
            $table->string('nama_wali')->nullable();
            $table->timestamps();

            $table->foreign('kelas_id')->references('id')->on('kelas')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('siswas');
    }
};
