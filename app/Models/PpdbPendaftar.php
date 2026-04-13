<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class PpdbPendaftar extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'nik',
        'nama_lengkap',
        'tempat_lahir',
        'tanggal_lahir',
        'jenis_kelamin',
        'nama_ayah',
        'nama_ibu',
        'pekerjaan_ayah',
        'pekerjaan_ibu',
        'no_wa',
        'alamat',
        'berkas_pas_foto',
        'berkas_kk',
        'berkas_akta_kelahiran',
        'status',
    ];
}
