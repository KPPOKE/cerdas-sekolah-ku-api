<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class Nilai extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'siswa_id',
        'mata_pelajaran_id',
        'kelas_id',
        'semester_id',
        'tugas',
        'uts',
        'uas',
        'rata_rata',
    ];

    public function siswa()
    {
        return $this->belongsTo(Siswa::class);
    }

    public function mataPelajaran()
    {
        return $this->belongsTo(MataPelajaran::class);
    }

    public function kelas()
    {
        return $this->belongsTo(Kelas::class);
    }

    public function semester()
    {
        return $this->belongsTo(Semester::class);
    }
}
