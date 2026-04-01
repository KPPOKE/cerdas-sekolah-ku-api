<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class TahunAjaran extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'nama',
        'mulai',
        'selesai',
        'aktif',
    ];

    protected $casts = [
        'aktif' => 'boolean',
    ];

    public function semesters()
    {
        return $this->hasMany(Semester::class);
    }

    public function kelas()
    {
        return $this->hasMany(Kelas::class);
    }
}
