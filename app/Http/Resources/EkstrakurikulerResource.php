<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class EkstrakurikulerResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'nama' => $this->nama,
            'hari' => $this->hari,
            'guruId' => $this->guru_id,
            'deskripsi' => $this->deskripsi,
            'guru' => $this->whenLoaded('guru', fn () => [
                'id' => $this->guru?->id,
                'nama' => $this->guru?->nama,
                'email' => $this->guru?->email,
                'role' => $this->guru?->role,
            ]),
        ];
    }
}
