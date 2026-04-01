<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Guru;
use App\Models\User;
use App\Http\Resources\GuruResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class GuruController extends Controller
{
    public function index()
    {
        return GuruResource::collection(Guru::all());
    }

    public function show($id)
    {
        return new GuruResource(Guru::findOrFail($id));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'nama' => 'required|string|max:255',
            'nip' => 'nullable|string|max:255',
            'pangkatGolongan' => 'nullable|string|max:255',
            'tempatLahir' => 'required|string|max:255',
            'tanggalLahir' => 'required|date',
            'nik' => 'required|string|unique:gurus,nik',
            'pegId' => 'nullable|string|max:255',
            'npk' => 'nullable|string|max:255',
            'nuptk' => 'nullable|string|max:255',
            'alamatJalan' => 'required|string',
            'alamatKelurahan' => 'required|string|max:255',
            'alamatKecamatan' => 'required|string|max:255',
            'alamatKabKota' => 'required|string|max:255',
            'statusPegawai' => 'required|string|max:255',
            'npsn' => 'nullable|string|max:255',
            'nsm' => 'nullable|string|max:255',
            'madrasahTempatTugas' => 'required|string|max:255',
            'kecamatanTugas' => 'required|string|max:255',
            'sukuDinasPendidikan' => 'required|string|max:255',
            'pendidikanTerakhir' => 'required|string|max:255',
            'bidangStudiPendidikan' => 'nullable|string|max:255',
            'mapelDiampu' => 'nullable|string|max:255',
            'statusSertifikasi' => 'nullable|string|max:255',
            'bidangStudiSertifikasi' => 'nullable|string|max:255',
            'nomorPesertaSertifikasi' => 'nullable|string|max:255',
            'nomorSertifikatPendidik' => 'nullable|string|max:255',
            'sertifikasiKedua' => 'nullable|string|max:255',
            'noHandphone' => 'nullable|string|max:20',
            'email' => 'nullable|email|max:255',
            'keterangan' => 'nullable|string',
        ]);

        $mapping = $this->camelToSnakeMapping();
        $data = [];
        foreach ($mapping as $camel => $snake) {
            if (array_key_exists($camel, $validated)) {
                $data[$snake] = $validated[$camel];
            }
        }
        // Direct-name fields
        $data['nama'] = $validated['nama'];
        $data['nip'] = $validated['nip'] ?? null;
        $data['nik'] = $validated['nik'];
        $data['email'] = $validated['email'] ?? null;

        $guru = Guru::create($data);

        // Auto-create User login account
        $username = $validated['nik']; // Use NIK as username
        $defaultPassword = 'password';
        $email = $validated['email'] ?? $validated['nik'] . '@madrasah.id';

        // Ensure unique email for the user
        $userEmail = $email;
        if (User::where('email', $userEmail)->exists()) {
            $userEmail = $validated['nik'] . '@madrasah.id';
        }

        // Ensure unique username
        $userUsername = $username;
        if (User::where('username', $userUsername)->exists()) {
            $userUsername = 'guru_' . $validated['nik'];
        }

        User::create([
            'username' => $userUsername,
            'nama' => $validated['nama'],
            'role' => 'guru',
            'email' => $userEmail,
            'password' => Hash::make($defaultPassword),
            'must_change_password' => true,
        ]);

        return response()->json([
            'data' => (new GuruResource($guru))->resolve(),
            'account' => [
                'username' => $userUsername,
                'defaultPassword' => $defaultPassword,
            ],
        ], 201);
    }

    public function update(Request $request, $id)
    {
        $guru = Guru::findOrFail($id);
        $oldEmail = $guru->email;

        $validated = $request->validate([
            'nama' => 'sometimes|required|string|max:255',
            'nip' => 'nullable|string|max:255',
            'pangkatGolongan' => 'nullable|string|max:255',
            'tempatLahir' => 'sometimes|required|string|max:255',
            'tanggalLahir' => 'sometimes|required|date',
            'nik' => 'sometimes|required|string|unique:gurus,nik,' . $guru->id,
            'pegId' => 'nullable|string|max:255',
            'npk' => 'nullable|string|max:255',
            'nuptk' => 'nullable|string|max:255',
            'alamatJalan' => 'sometimes|required|string',
            'alamatKelurahan' => 'sometimes|required|string|max:255',
            'alamatKecamatan' => 'sometimes|required|string|max:255',
            'alamatKabKota' => 'sometimes|required|string|max:255',
            'statusPegawai' => 'sometimes|required|string|max:255',
            'npsn' => 'nullable|string|max:255',
            'nsm' => 'nullable|string|max:255',
            'madrasahTempatTugas' => 'sometimes|required|string|max:255',
            'kecamatanTugas' => 'sometimes|required|string|max:255',
            'sukuDinasPendidikan' => 'sometimes|required|string|max:255',
            'pendidikanTerakhir' => 'sometimes|required|string|max:255',
            'bidangStudiPendidikan' => 'nullable|string|max:255',
            'mapelDiampu' => 'nullable|string|max:255',
            'statusSertifikasi' => 'nullable|string|max:255',
            'bidangStudiSertifikasi' => 'nullable|string|max:255',
            'nomorPesertaSertifikasi' => 'nullable|string|max:255',
            'nomorSertifikatPendidik' => 'nullable|string|max:255',
            'sertifikasiKedua' => 'nullable|string|max:255',
            'noHandphone' => 'nullable|string|max:20',
            'email' => 'nullable|email|max:255',
            'keterangan' => 'nullable|string',
        ]);

        $mapping = $this->camelToSnakeMapping();
        $data = [];
        foreach ($mapping as $camel => $snake) {
            if (array_key_exists($camel, $validated)) {
                $data[$snake] = $validated[$camel];
            }
        }
        // Direct-name fields
        if (array_key_exists('nama', $validated)) $data['nama'] = $validated['nama'];
        if (array_key_exists('nip', $validated)) $data['nip'] = $validated['nip'];
        if (array_key_exists('nik', $validated)) $data['nik'] = $validated['nik'];
        if (array_key_exists('email', $validated)) $data['email'] = $validated['email'];

        $guru->update($data);

        // Sync linked User account if email or nama changed
        if ($oldEmail) {
            $linkedUser = User::where('email', $oldEmail)->where('role', 'guru')->first();
            if ($linkedUser) {
                $syncData = [];
                if (isset($data['email']) && $data['email'] !== $oldEmail) {
                    $syncData['email'] = $data['email'];
                }
                if (isset($data['nama'])) {
                    $syncData['nama'] = $data['nama'];
                }
                if (!empty($syncData)) {
                    $linkedUser->update($syncData);
                }
            }
        }

        return new GuruResource($guru);
    }

    public function destroy($id)
    {
        $guru = Guru::findOrFail($id);

        // Also delete the linked User account
        if ($guru->email) {
            User::where('email', $guru->email)->where('role', 'guru')->delete();
        }

        $guru->delete();

        return response()->noContent();
    }

    /**
     * Admin resets a guru's password back to default.
     */
    public function resetPassword($id)
    {
        $guru = Guru::findOrFail($id);

        // Find linked user by NIK-based username or email
        $linkedUser = null;
        if ($guru->email) {
            $linkedUser = User::where('email', $guru->email)->where('role', 'guru')->first();
        }
        if (!$linkedUser) {
            $linkedUser = User::where('username', $guru->nik)->where('role', 'guru')->first();
        }

        if (!$linkedUser) {
            return response()->json(['message' => 'Akun login untuk guru ini tidak ditemukan'], 404);
        }

        $linkedUser->update([
            'password' => Hash::make('password'),
            'must_change_password' => true,
        ]);

        return response()->json([
            'message' => 'Password berhasil direset',
            'username' => $linkedUser->username,
        ]);
    }

    /**
     * Mapping from camelCase (API) to snake_case (DB) for fields that differ.
     */
    private function camelToSnakeMapping(): array
    {
        return [
            'pangkatGolongan' => 'pangkat_golongan',
            'tempatLahir' => 'tempat_lahir',
            'tanggalLahir' => 'tanggal_lahir',
            'pegId' => 'peg_id',
            'alamatJalan' => 'alamat_jalan',
            'alamatKelurahan' => 'alamat_kelurahan',
            'alamatKecamatan' => 'alamat_kecamatan',
            'alamatKabKota' => 'alamat_kab_kota',
            'statusPegawai' => 'status_pegawai',
            'madrasahTempatTugas' => 'madrasah_tempat_tugas',
            'kecamatanTugas' => 'kecamatan_tugas',
            'sukuDinasPendidikan' => 'suku_dinas_pendidikan',
            'pendidikanTerakhir' => 'pendidikan_terakhir',
            'bidangStudiPendidikan' => 'bidang_studi_pendidikan',
            'mapelDiampu' => 'mapel_diampu',
            'statusSertifikasi' => 'status_sertifikasi',
            'bidangStudiSertifikasi' => 'bidang_studi_sertifikasi',
            'nomorPesertaSertifikasi' => 'nomor_peserta_sertifikasi',
            'nomorSertifikatPendidik' => 'nomor_sertifikat_pendidik',
            'sertifikasiKedua' => 'sertifikasi_kedua',
            'noHandphone' => 'no_handphone',
        ];
    }
}
