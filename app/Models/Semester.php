<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class Semester extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'nama',
        'tahun_ajaran_id',
        'aktif',
    ];

    protected $casts = [
        'aktif' => 'boolean',
    ];

    public function tahunAjaran()
    {
        return $this->belongsTo(TahunAjaran::class);
    }

    public function pengajaranGurus()
    {
        return $this->hasMany(PengajaranGuru::class);
    }

    public function nilais()
    {
        return $this->hasMany(Nilai::class);
    }
}
