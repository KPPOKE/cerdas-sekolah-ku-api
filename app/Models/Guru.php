<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class Guru extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'nama',
        'nip',
        'pangkat_golongan',
        'tempat_lahir',
        'tanggal_lahir',
        'nik',
        'peg_id',
        'npk',
        'nuptk',
        'alamat_jalan',
        'alamat_kelurahan',
        'alamat_kecamatan',
        'alamat_kab_kota',
        'status_pegawai',
        'npsn',
        'nsm',
        'madrasah_tempat_tugas',
        'kecamatan_tugas',
        'suku_dinas_pendidikan',
        'pendidikan_terakhir',
        'bidang_studi_pendidikan',
        'mapel_diampu',
        'status_sertifikasi',
        'bidang_studi_sertifikasi',
        'nomor_peserta_sertifikasi',
        'nomor_sertifikat_pendidik',
        'sertifikasi_kedua',
        'no_handphone',
        'email',
        'keterangan',
    ];

    public function kelas()
    {
        return $this->hasMany(Kelas::class);
    }

    public function pengajaranGurus()
    {
        return $this->hasMany(PengajaranGuru::class);
    }
}
