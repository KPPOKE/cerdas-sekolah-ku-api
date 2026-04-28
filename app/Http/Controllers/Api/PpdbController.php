<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\PpdbPendaftarResource;
use Illuminate\Http\Request;
use App\Models\PpdbPendaftar;
use App\Models\Siswa;

class PpdbController extends Controller
{
    public function index()
    {
        $pendaftars = PpdbPendaftar::orderBy('created_at', 'desc')->get();
        return PpdbPendaftarResource::collection($pendaftars);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'nik' => 'required|unique:ppdb_pendaftars,nik',
            'nama_lengkap' => 'required|string|max:255',
            'tempat_lahir' => 'required|string|max:255',
            'tanggal_lahir' => 'required|date',
            'jenis_kelamin' => 'required|string',
            'nama_ayah' => 'required|string|max:255',
            'nama_ibu' => 'required|string|max:255',
            'pekerjaan_ayah' => 'nullable|string|max:255',
            'pekerjaan_ibu' => 'nullable|string|max:255',
            'no_wa' => 'required|string|max:20',
            'alamat' => 'required|string',
            'berkas_pas_foto' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'berkas_kk' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'berkas_akta_kelahiran' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        ]);

        $data = $request->except(['berkas_pas_foto', 'berkas_kk', 'berkas_akta_kelahiran']);

        // Handle file uploads
        if ($request->hasFile('berkas_pas_foto')) {
            $data['berkas_pas_foto'] = $request->file('berkas_pas_foto')->store('ppdb/pas-foto', 'public');
        }
        if ($request->hasFile('berkas_kk')) {
            $data['berkas_kk'] = $request->file('berkas_kk')->store('ppdb/kk', 'public');
        }
        if ($request->hasFile('berkas_akta_kelahiran')) {
            $data['berkas_akta_kelahiran'] = $request->file('berkas_akta_kelahiran')->store('ppdb/akta', 'public');
        }

        $pendaftar = PpdbPendaftar::create($data);

        return response()->json([
            'status' => 'success',
            'message' => 'Pendaftaran berhasil dikirim',
            'data' => new PpdbPendaftarResource($pendaftar)
        ], 201);
    }

    public function checkStatus(Request $request)
    {
        $request->validate([
            'nik' => 'required|string'
        ]);

        $pendaftar = PpdbPendaftar::where('nik', $request->nik)->first();

        if (!$pendaftar) {
            return response()->json([
                'status' => 'error',
                'message' => 'Data tidak ditemukan dengan NIK tersebut'
            ], 404);
        }

        return response()->json([
            'status' => 'success',
            'data' => new PpdbPendaftarResource($pendaftar)
        ]);
    }

    public function updateStatus(Request $request, $id)
    {
        $request->validate([
            'status' => 'required|in:pending,diterima,ditolak'
        ]);

        $pendaftar = PpdbPendaftar::findOrFail($id);
        $pendaftar->status = $request->status;
        $pendaftar->save();

        return response()->json([
            'status' => 'success',
            'message' => 'Status pendaftar berhasil diupdate',
            'data' => new PpdbPendaftarResource($pendaftar)
        ]);
    }

    public function terimaSiswa(Request $request)
    {
        $request->validate([
            'pendaftar_id' => 'required|exists:ppdb_pendaftars,id',
            'kelas_id' => 'required|exists:kelas,id'
        ]);

        $pendaftar = PpdbPendaftar::findOrFail($request->pendaftar_id);
        
        if ($pendaftar->status !== 'pending') {
            return response()->json(['message' => 'Pendaftar sudah diproses'], 400);
        }

        $pendaftar->status = 'diterima';
        $pendaftar->save();

        $jenisKelamin = match ($pendaftar->jenis_kelamin) {
            'L' => 'Laki-laki',
            'P' => 'Perempuan',
            default => $pendaftar->jenis_kelamin,
        };

        $siswa = Siswa::create([
            'nama_lengkap' => $pendaftar->nama_lengkap,
            'nik' => $pendaftar->nik,
            'nisn' => str_pad(rand(1, 999999999), 10, '0', STR_PAD_LEFT), // mock NISN since not in form
            'tempat_lahir' => $pendaftar->tempat_lahir,
            'tanggal_lahir' => $pendaftar->tanggal_lahir,
            'jenis_kelamin' => $jenisKelamin,
            'alamat' => $pendaftar->alamat,
            'no_telepon' => $pendaftar->no_wa,
            'nama_ayah_kandung' => $pendaftar->nama_ayah,
            'nama_ibu_kandung' => $pendaftar->nama_ibu,
            'kelas_id' => $request->kelas_id,
            'status' => 'Aktif'
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Siswa berhasil diterima dan dimutasi ke data master',
            'data' => $siswa
        ]);
    }
}
