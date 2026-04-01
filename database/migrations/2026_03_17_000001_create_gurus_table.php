<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('gurus', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->string('nama');
            $table->string('nip')->nullable();
            $table->string('pangkat_golongan')->nullable();
            $table->string('tempat_lahir');
            $table->date('tanggal_lahir');
            $table->string('nik')->unique();
            $table->string('peg_id')->nullable();
            $table->string('npk')->nullable();
            $table->string('nuptk')->nullable();
            $table->text('alamat_jalan');
            $table->string('alamat_kelurahan');
            $table->string('alamat_kecamatan');
            $table->string('alamat_kab_kota');
            $table->string('status_pegawai');
            $table->string('npsn')->nullable();
            $table->string('nsm')->nullable();
            $table->string('madrasah_tempat_tugas');
            $table->string('kecamatan_tugas');
            $table->string('suku_dinas_pendidikan');
            $table->string('pendidikan_terakhir');
            $table->string('bidang_studi_pendidikan')->nullable();
            $table->string('mapel_diampu')->nullable();
            $table->string('status_sertifikasi')->nullable();
            $table->string('bidang_studi_sertifikasi')->nullable();
            $table->string('nomor_peserta_sertifikasi')->nullable();
            $table->string('nomor_sertifikat_pendidik')->nullable();
            $table->string('sertifikasi_kedua')->nullable();
            $table->string('no_handphone')->nullable();
            $table->string('email')->nullable();
            $table->text('keterangan')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('gurus');
    }
};
