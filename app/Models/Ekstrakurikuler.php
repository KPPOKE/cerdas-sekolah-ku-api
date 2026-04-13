<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class Ekstrakurikuler extends Model
{
    use HasFactory, HasUuids;

    protected $fillable = [
        'nama',
        'hari',
        'guru_id',
        'deskripsi',
    ];

    public function guru()
    {
        return $this->belongsTo(User::class, 'guru_id');
    }

    public function anggotas()
    {
        return $this->hasMany(EkstrakurikulerAnggota::class, 'ekstrakurikuler_id');
    }
}
