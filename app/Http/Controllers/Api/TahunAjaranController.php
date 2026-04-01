<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\TahunAjaran;
use App\Http\Resources\TahunAjaranResource;
use Illuminate\Http\Request;

class TahunAjaranController extends Controller
{
    public function index()
    {
        return TahunAjaranResource::collection(TahunAjaran::all());
    }

    public function show($id)
    {
        return new TahunAjaranResource(TahunAjaran::findOrFail($id));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'nama' => 'required|string|max:255',
            'mulai' => 'required|date',
            'selesai' => 'required|date|after:mulai',
        ]);

        $ta = TahunAjaran::create([
            'nama' => $validated['nama'],
            'mulai' => $validated['mulai'],
            'selesai' => $validated['selesai'],
            'aktif' => false,
        ]);

        return new TahunAjaranResource($ta, 201);
    }

    public function update(Request $request, $id)
    {
        $ta = TahunAjaran::findOrFail($id);

        $validated = $request->validate([
            'nama' => 'sometimes|required|string|max:255',
            'mulai' => 'sometimes|required|date',
            'selesai' => 'sometimes|required|date',
            'aktif' => 'sometimes|boolean',
        ]);

        $ta->update($validated);

        return new TahunAjaranResource($ta);
    }

    /**
     * Set a specific tahun ajaran as active (and deactivate all others).
     */
    public function toggleAktif($id)
    {
        // Deactivate all
        TahunAjaran::query()->update(['aktif' => false]);
        // Activate selected
        $ta = TahunAjaran::findOrFail($id);
        $ta->update(['aktif' => true]);

        return new TahunAjaranResource($ta);
    }

    public function destroy($id)
    {
        $ta = TahunAjaran::findOrFail($id);
        $ta->delete();

        return response()->noContent();
    }
}
