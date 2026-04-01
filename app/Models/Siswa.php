<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class Siswa extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'kelas_id',
        'nama_lengkap',
        'nisn',
        'nik',
        'tempat_lahir',
        'tanggal_lahir',
        'umur',
        'status',
        'jenis_kelamin',
        'alamat',
        'no_telepon',
        'kebutuhan_khusus',
        'disabilitas',
        'nomor_kip_pip',
        'nama_ayah_kandung',
        'nama_ibu_kandung',
        'nama_wali',
    ];

    public function kelas()
    {
        return $this->belongsTo(Kelas::class);
    }

    public function absensis()
    {
        return $this->hasMany(Absensi::class);
    }

    public function nilais()
    {
        return $this->hasMany(Nilai::class);
    }
}
