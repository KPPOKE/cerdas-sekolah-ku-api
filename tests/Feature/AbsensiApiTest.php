<?php

namespace Tests\Feature;

use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Laravel\Sanctum\Sanctum;
use Tests\TestCase;

class AbsensiApiTest extends TestCase
{
    use RefreshDatabase;

    public function test_authenticated_user_can_save_and_read_absensi(): void
    {
        $user = User::create([
            'username' => 'guru-test',
            'nama' => 'Guru Test',
            'role' => 'guru',
            'email' => 'guru-test@example.com',
            'password' => 'password',
        ]);

        $kelas = Kelas::create([
            'tingkat' => 1,
            'nama_kelas' => '1A',
        ]);

        $siswa = Siswa::create([
            'kelas_id' => $kelas->id,
            'nama_lengkap' => 'Siswa Test',
            'tempat_lahir' => 'Jakarta',
            'tanggal_lahir' => '2018-01-01',
            'jenis_kelamin' => 'Laki-laki',
            'alamat' => 'Jl. Test',
            'status' => 'Aktif',
        ]);

        Sanctum::actingAs($user);

        $payload = [
            'kelas_id' => $kelas->id,
            'tanggal' => '2026-04-28',
            'absensi' => [
                [
                    'siswa_id' => $siswa->id,
                    'status' => 'izin',
                    'keterangan' => 'Keperluan keluarga',
                ],
            ],
        ];

        $saveResponse = $this->postJson('/api/absensi/batch', $payload);

        $saveResponse->assertOk()
            ->assertJsonPath('status', 'success')
            ->assertJsonPath('data.0.siswaId', $siswa->id)
            ->assertJsonPath('data.0.status', 'izin');

        $this->assertDatabaseHas('absensis', [
            'kelas_id' => $kelas->id,
            'siswa_id' => $siswa->id,
            'tanggal' => '2026-04-28',
            'status' => 'izin',
        ]);

        $readResponse = $this->getJson('/api/absensi?kelas_id=' . $kelas->id . '&tanggal=2026-04-28');

        $readResponse->assertOk()
            ->assertJsonPath('data.0.siswaId', $siswa->id)
            ->assertJsonPath('data.0.kelasId', $kelas->id)
            ->assertJsonPath('data.0.status', 'izin');
    }
}
