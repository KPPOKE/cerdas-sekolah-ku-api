<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class KelasResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'tingkat' => $this->tingkat,
            'namaKelas' => $this->nama_kelas,
            'guruId' => $this->guru_id,
        ];
    }
}
