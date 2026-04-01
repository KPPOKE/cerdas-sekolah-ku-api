<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Kelas;
use App\Http\Resources\KelasResource;
use Illuminate\Http\Request;

class KelasController extends Controller
{
    public function index()
    {
        return KelasResource::collection(Kelas::orderBy('tingkat')->orderBy('nama_kelas')->get());
    }

    public function show($id)
    {
        return new KelasResource(Kelas::findOrFail($id));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'namaKelas' => 'required|string|max:255',
            'tingkat' => 'required|integer|min:1|max:6',
            'guruId' => 'nullable|uuid|exists:gurus,id',
        ]);

        $kelas = Kelas::create([
            'nama_kelas' => $validated['namaKelas'],
            'tingkat' => $validated['tingkat'],
            'guru_id' => $validated['guruId'] ?? null,
        ]);

        return new KelasResource($kelas, 201);
    }

    public function update(Request $request, $id)
    {
        $kelas = Kelas::findOrFail($id);

        $validated = $request->validate([
            'namaKelas' => 'sometimes|required|string|max:255',
            'tingkat' => 'sometimes|required|integer|min:1|max:6',
            'guruId' => 'nullable|uuid|exists:gurus,id',
        ]);

        $data = [];
        $mapping = [
            'namaKelas' => 'nama_kelas',
            'tingkat' => 'tingkat',
            'guruId' => 'guru_id',
        ];

        foreach ($mapping as $camel => $snake) {
            if (array_key_exists($camel, $validated)) {
                $data[$snake] = $validated[$camel];
            }
        }

        $kelas->update($data);

        return new KelasResource($kelas);
    }

    public function destroy($id)
    {
        $kelas = Kelas::findOrFail($id);
        $kelas->delete();

        return response()->noContent();
    }
}
