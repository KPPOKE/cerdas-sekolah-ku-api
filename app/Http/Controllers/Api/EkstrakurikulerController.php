<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Ekstrakurikuler;
use App\Models\EkstrakurikulerAnggota;
use App\Models\EkstrakurikulerAbsensi;
use Illuminate\Support\Facades\Auth;

class EkstrakurikulerController extends Controller
{
    // === SETUP EKSKUL ===
    public function getEkskul(Request $request)
    {
        $query = Ekstrakurikuler::with('guru');
        
        // Filter by user if guru
        if ($request->has('guru_id')) {
            $query->where('guru_id', $request->guru_id);
        }

        $ekskul = $query->get();
        return response()->json($ekskul);
    }

    public function storeEkskul(Request $request)
    {
        $request->validate([
            'nama' => 'required|string',
            'hari' => 'required|string',
            'guru_id' => 'required|exists:users,id'
        ]);

        $ekskul = Ekstrakurikuler::create($request->all());
        
        // Load relation so frontend sees the guru info
        $ekskul->load('guru');

        return response()->json([
            'status' => 'success',
            'message' => 'Ekstrakurikuler berhasil ditambahkan',
            'data' => $ekskul
        ], 201);
    }

    public function updateEkskul(Request $request, $id)
    {
        $request->validate([
            'nama' => 'required|string',
            'hari' => 'required|string',
            'guru_id' => 'required|exists:users,id'
        ]);

        $ekskul = Ekstrakurikuler::findOrFail($id);
        $ekskul->update($request->all());
        $ekskul->load('guru');

        return response()->json([
            'status' => 'success',
            'message' => 'Ekstrakurikuler berhasil diperbarui',
            'data' => $ekskul
        ]);
    }

    public function destroyEkskul($id)
    {
        $ekskul = Ekstrakurikuler::findOrFail($id);
        
        // Check if has members
        if ($ekskul->anggotas()->count() > 0) {
            return response()->json([
                'status' => 'error',
                'message' => 'Tidak dapat menghapus ekstrakurikuler yang masih memiliki anggota'
            ], 400);
        }

        $ekskul->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Ekstrakurikuler berhasil dihapus'
        ]);
    }

    // === ANGGOTA EKSKUL ===
    public function getAnggota(Request $request)
    {
        $query = EkstrakurikulerAnggota::with(['siswa', 'ekstrakurikuler']);

        if ($request->has('ekstrakurikuler_id')) {
            $query->where('ekstrakurikuler_id', $request->ekstrakurikuler_id);
        }

        return response()->json($query->get());
    }

    public function storeAnggota(Request $request)
    {
        $request->validate([
            'ekstrakurikuler_id' => 'required|exists:ekstrakurikulers,id',
            'siswa_id' => 'required|exists:siswas,id'
        ]);

        // Check duplicate
        $exists = EkstrakurikulerAnggota::where('ekstrakurikuler_id', $request->ekstrakurikuler_id)
            ->where('siswa_id', $request->siswa_id)
            ->exists();
            
        if ($exists) {
            return response()->json(['message' => 'Siswa sudah tergabung di ekskul ini'], 400);
        }

        $anggota = EkstrakurikulerAnggota::create($request->all());
        $anggota->load(['siswa', 'ekstrakurikuler']);

        return response()->json([
            'status' => 'success',
            'message' => 'Siswa berhasil ditambahkan',
            'data' => $anggota
        ]);
    }

    // === ABSENSI EKSKUL ===
    public function getAbsensi(Request $request)
    {
        $query = EkstrakurikulerAbsensi::with('siswa');

        if ($request->has('ekstrakurikuler_id')) {
            $query->where('ekstrakurikuler_id', $request->ekstrakurikuler_id);
        }
        if ($request->has('tanggal')) {
            $query->where('tanggal', $request->tanggal);
        }

        return response()->json($query->get());
    }

    public function saveAbsensi(Request $request)
    {
        $request->validate([
            'ekstrakurikuler_id' => 'required|exists:ekstrakurikulers,id',
            'tanggal' => 'required|date',
            'absensi' => 'required|array'
        ]);

        // absensi is array of [siswa_id => status]
        foreach ($request->absensi as $siswaId => $status) {
            EkstrakurikulerAbsensi::updateOrCreate(
                [
                    'ekstrakurikuler_id' => $request->ekstrakurikuler_id,
                    'siswa_id' => $siswaId,
                    'tanggal' => $request->tanggal
                ],
                ['status' => $status]
            );
        }

        return response()->json([
            'status' => 'success',
            'message' => 'Presensi berhasil disimpan'
        ]);
    }
    public function destroyAnggota($id)
    {
        $anggota = EkstrakurikulerAnggota::findOrFail($id);
        $anggota->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Siswa berhasil dihapus dari ekstrakurikuler'
        ]);
    }
}
