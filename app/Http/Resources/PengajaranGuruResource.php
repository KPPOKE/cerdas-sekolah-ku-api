<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PengajaranGuruResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'guruId' => $this->guru_id,
            'kelasId' => $this->kelas_id,
            'mataPelajaranId' => $this->mata_pelajaran_id,
            'semesterId' => $this->semester_id,
        ];
    }
}
