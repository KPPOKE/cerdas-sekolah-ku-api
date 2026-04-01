<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\MataPelajaran;
use App\Http\Resources\MataPelajaranResource;
use Illuminate\Http\Request;

class MataPelajaranController extends Controller
{
    public function index()
    {
        return MataPelajaranResource::collection(MataPelajaran::all());
    }

    public function show($id)
    {
        return new MataPelajaranResource(MataPelajaran::findOrFail($id));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'kode' => 'required|string|max:20|unique:mata_pelajarans,kode',
            'nama' => 'required|string|max:255',
            'deskripsi' => 'nullable|string',
        ]);

        $mapel = MataPelajaran::create($validated);

        return new MataPelajaranResource($mapel, 201);
    }

    public function update(Request $request, $id)
    {
        $mapel = MataPelajaran::findOrFail($id);

        $validated = $request->validate([
            'kode' => 'sometimes|required|string|max:20|unique:mata_pelajarans,kode,' . $mapel->id,
            'nama' => 'sometimes|required|string|max:255',
            'deskripsi' => 'nullable|string',
        ]);

        $mapel->update($validated);

        return new MataPelajaranResource($mapel);
    }

    public function destroy($id)
    {
        $mapel = MataPelajaran::findOrFail($id);
        $mapel->delete();

        return response()->noContent();
    }
}
