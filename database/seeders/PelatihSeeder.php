<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Ekstrakurikuler;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class PelatihSeeder extends Seeder
{
    public function run(): void
    {
        $pelatihId = Str::uuid()->toString();
        
        User::create([
            'id' => $pelatihId,
            'username' => 'pelatih1',
            'nama' => 'Coach Budi',
            'role' => 'pelatih',
            'email' => 'pelatih1@example.com',
            'password' => Hash::make('password'),
            'must_change_password' => false,
        ]);

        Ekstrakurikuler::create([
            'id' => Str::uuid()->toString(),
            'nama' => 'Pramuka',
            'hari' => 'Sabtu',
            'guru_id' => $pelatihId,
            'deskripsi' => 'Kegiatan Pramuka MI Al-Haq',
        ]);
    }
}
