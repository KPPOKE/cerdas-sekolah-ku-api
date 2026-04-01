<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Siswa;
use App\Http\Resources\SiswaResource;
use Illuminate\Http\Request;

class SiswaController extends Controller
{
    public function index()
    {
        return SiswaResource::collection(Siswa::all());
    }

    public function show($id)
    {
        return new SiswaResource(Siswa::findOrFail($id));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'kelasId' => 'required|uuid|exists:kelas,id',
            'namaLengkap' => 'required|string|max:255',
            'nisn' => 'nullable|string|unique:siswas,nisn',
            'nik' => 'nullable|string|unique:siswas,nik',
            'tempatLahir' => 'required|string|max:255',
            'tanggalLahir' => 'required|date',
            'umur' => 'nullable|string|max:50',
            'status' => 'nullable|string|max:50',
            'jenisKelamin' => 'required|string|in:Laki-laki,Perempuan',
            'alamat' => 'required|string',
            'noTelepon' => 'nullable|string|max:20',
            'kebutuhanKhusus' => 'nullable|string|max:255',
            'disabilitas' => 'nullable|string|max:255',
            'nomorKipPip' => 'nullable|string|max:255',
            'namaAyahKandung' => 'nullable|string|max:255',
            'namaIbuKandung' => 'nullable|string|max:255',
            'namaWali' => 'nullable|string|max:255',
        ]);

        $mapping = $this->camelToSnakeMapping();
        $data = [];
        foreach ($mapping as $camel => $snake) {
            if (array_key_exists($camel, $validated)) {
                $data[$snake] = $validated[$camel];
            }
        }

        $siswa = Siswa::create($data);

        return new SiswaResource($siswa, 201);
    }

    public function update(Request $request, $id)
    {
        $siswa = Siswa::findOrFail($id);

        $validated = $request->validate([
            'kelasId' => 'sometimes|required|uuid|exists:kelas,id',
            'namaLengkap' => 'sometimes|required|string|max:255',
            'nisn' => 'nullable|string|unique:siswas,nisn,' . $siswa->id,
            'nik' => 'nullable|string|unique:siswas,nik,' . $siswa->id,
            'tempatLahir' => 'sometimes|required|string|max:255',
            'tanggalLahir' => 'sometimes|required|date',
            'umur' => 'nullable|string|max:50',
            'status' => 'nullable|string|max:50',
            'jenisKelamin' => 'sometimes|required|string|in:Laki-laki,Perempuan',
            'alamat' => 'sometimes|required|string',
            'noTelepon' => 'nullable|string|max:20',
            'kebutuhanKhusus' => 'nullable|string|max:255',
            'disabilitas' => 'nullable|string|max:255',
            'nomorKipPip' => 'nullable|string|max:255',
            'namaAyahKandung' => 'nullable|string|max:255',
            'namaIbuKandung' => 'nullable|string|max:255',
            'namaWali' => 'nullable|string|max:255',
        ]);

        $mapping = $this->camelToSnakeMapping();
        $data = [];
        foreach ($mapping as $camel => $snake) {
            if (array_key_exists($camel, $validated)) {
                $data[$snake] = $validated[$camel];
            }
        }

        $siswa->update($data);

        return new SiswaResource($siswa);
    }

    public function destroy($id)
    {
        $siswa = Siswa::findOrFail($id);
        $siswa->delete();

        return response()->noContent();
    }

    private function camelToSnakeMapping(): array
    {
        return [
            'kelasId' => 'kelas_id',
            'namaLengkap' => 'nama_lengkap',
            'nisn' => 'nisn',
            'nik' => 'nik',
            'tempatLahir' => 'tempat_lahir',
            'tanggalLahir' => 'tanggal_lahir',
            'umur' => 'umur',
            'status' => 'status',
            'jenisKelamin' => 'jenis_kelamin',
            'alamat' => 'alamat',
            'noTelepon' => 'no_telepon',
            'kebutuhanKhusus' => 'kebutuhan_khusus',
            'disabilitas' => 'disabilitas',
            'nomorKipPip' => 'nomor_kip_pip',
            'namaAyahKandung' => 'nama_ayah_kandung',
            'namaIbuKandung' => 'nama_ibu_kandung',
            'namaWali' => 'nama_wali',
        ];
    }
}
