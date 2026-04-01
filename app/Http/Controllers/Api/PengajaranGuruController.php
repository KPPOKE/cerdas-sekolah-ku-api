<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\PengajaranGuru;
use App\Http\Resources\PengajaranGuruResource;
use Illuminate\Http\Request;

class PengajaranGuruController extends Controller
{
    public function index()
    {
        return PengajaranGuruResource::collection(PengajaranGuru::all());
    }

    public function show($id)
    {
        return new PengajaranGuruResource(PengajaranGuru::findOrFail($id));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'guruId' => 'required|uuid|exists:gurus,id',
            'kelasId' => 'required|uuid|exists:kelas,id',
            'mataPelajaranId' => 'required|uuid|exists:mata_pelajarans,id',
            'semesterId' => 'required|uuid|exists:semesters,id',
        ]);

        $pg = PengajaranGuru::create([
            'guru_id' => $validated['guruId'],
            'kelas_id' => $validated['kelasId'],
            'mata_pelajaran_id' => $validated['mataPelajaranId'],
            'semester_id' => $validated['semesterId'],
        ]);

        return new PengajaranGuruResource($pg, 201);
    }

    public function destroy($id)
    {
        $pg = PengajaranGuru::findOrFail($id);
        $pg->delete();

        return response()->noContent();
    }
}
