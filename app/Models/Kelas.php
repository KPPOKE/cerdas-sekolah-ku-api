<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class Kelas extends Model
{
    use HasFactory, HasUuids;

    protected $table = 'kelas';

    protected $fillable = [
        'tingkat',
        'nama_kelas',
        'guru_id',
    ];

    public function waliKelas()
    {
        return $this->belongsTo(Guru::class, 'guru_id');
    }

    public function siswas()
    {
        return $this->hasMany(Siswa::class, 'kelas_id');
    }
}
