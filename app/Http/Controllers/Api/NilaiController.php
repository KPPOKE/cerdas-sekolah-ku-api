<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Nilai;
use App\Models\Semester;
use Illuminate\Http\Request;

class NilaiController extends Controller
{
    /**
     * Get grades for a specific class and subject in the active semester.
     */
    public function index(Request $request)
    {
        $request->validate([
            'kelas_id' => 'required|exists:kelas,id',
            'mata_pelajaran_id' => 'required|exists:mata_pelajarans,id',
        ]);

        $activeSemester = Semester::where('aktif', true)->first();

        if (!$activeSemester) {
            return response()->json([
                'status' => 'error',
                'message' => 'Tidak ada semester aktif saat ini.'
            ], 400);
        }

        $nilais = Nilai::where('kelas_id', $request->kelas_id)
            ->where('mata_pelajaran_id', $request->mata_pelajaran_id)
            ->where('semester_id', $activeSemester->id)
            ->get();

        return response()->json([
            'status' => 'success',
            'data' => $nilais
        ]);
    }

    /**
     * Batch save grades for multiple students.
     */
    public function batchSave(Request $request)
    {
        $request->validate([
            'kelas_id' => 'required|exists:kelas,id',
            'mata_pelajaran_id' => 'required|exists:mata_pelajarans,id',
            'grades' => 'required|array',
            'grades.*.siswa_id' => 'required|exists:siswas,id',
            'grades.*.tugas' => 'required|numeric|min:0|max:100',
            'grades.*.uts' => 'required|numeric|min:0|max:100',
            'grades.*.uas' => 'required|numeric|min:0|max:100',
            'grades.*.rata_rata' => 'required|numeric|min:0|max:100',
        ]);

        $activeSemester = Semester::where('aktif', true)->first();

        if (!$activeSemester) {
            return response()->json([
                'status' => 'error',
                'message' => 'Tidak ada semester aktif saat ini. Silakan atur semester aktif terlebih dahulu.'
            ], 400);
        }

        $savedData = [];

        foreach ($request->grades as $gradeData) {
            $nilai = Nilai::updateOrCreate(
                [
                    'siswa_id' => $gradeData['siswa_id'],
                    'kelas_id' => $request->kelas_id,
                    'mata_pelajaran_id' => $request->mata_pelajaran_id,
                    'semester_id' => $activeSemester->id,
                ],
                [
                    'tugas' => $gradeData['tugas'],
                    'uts' => $gradeData['uts'],
                    'uas' => $gradeData['uas'],
                    'rata_rata' => $gradeData['rata_rata'],
                ]
            );
            $savedData[] = $nilai;
        }

        return response()->json([
            'status' => 'success',
            'message' => 'Nilai berhasil disimpan',
            'data' => $savedData
        ]);
    }
}
