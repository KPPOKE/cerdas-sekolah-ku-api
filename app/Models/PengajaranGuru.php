<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class PengajaranGuru extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'guru_id',
        'kelas_id',
        'mata_pelajaran_id',
        'semester_id',
    ];

    public function guru()
    {
        return $this->belongsTo(Guru::class);
    }

    public function kelas()
    {
        return $this->belongsTo(Kelas::class);
    }

    public function mataPelajaran()
    {
        return $this->belongsTo(MataPelajaran::class);
    }

    public function semester()
    {
        return $this->belongsTo(Semester::class);
    }
}
