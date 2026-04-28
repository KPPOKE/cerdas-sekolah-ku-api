<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\AbsensiResource;
use App\Models\Absensi;
use Illuminate\Http\Request;

class AbsensiController extends Controller
{
    public function index(Request $request)
    {
        $validated = $request->validate([
            'kelas_id' => 'required|exists:kelas,id',
            'tanggal' => 'required|date',
        ]);

        $absensis = Absensi::where('kelas_id', $validated['kelas_id'])
            ->where('tanggal', $validated['tanggal'])
            ->get();

        return AbsensiResource::collection($absensis);
    }

    public function batchSave(Request $request)
    {
        $validated = $request->validate([
            'kelas_id' => 'required|exists:kelas,id',
            'tanggal' => 'required|date',
            'absensi' => 'required|array',
            'absensi.*.siswa_id' => 'required|exists:siswas,id',
            'absensi.*.status' => 'required|in:hadir,alfa,sakit,izin',
            'absensi.*.keterangan' => 'nullable|string',
        ]);

        $savedData = [];

        foreach ($validated['absensi'] as $item) {
            $savedData[] = Absensi::updateOrCreate(
                [
                    'siswa_id' => $item['siswa_id'],
                    'kelas_id' => $validated['kelas_id'],
                    'tanggal' => $validated['tanggal'],
                ],
                [
                    'status' => $item['status'],
                    'keterangan' => $item['keterangan'] ?? null,
                ]
            );
        }

        return response()->json([
            'status' => 'success',
            'message' => 'Absensi berhasil disimpan',
            'data' => AbsensiResource::collection(collect($savedData))->resolve(),
        ]);
    }
}
