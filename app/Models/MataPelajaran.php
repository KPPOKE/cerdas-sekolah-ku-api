<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class MataPelajaran extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'kode',
        'nama',
        'deskripsi',
    ];

    public function pengajaranGurus()
    {
        return $this->hasMany(PengajaranGuru::class);
    }

    public function nilais()
    {
        return $this->hasMany(Nilai::class);
    }
}
