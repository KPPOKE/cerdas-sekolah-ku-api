<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class AbsensiResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'siswaId' => $this->siswa_id,
            'kelasId' => $this->kelas_id,
            'tanggal' => $this->tanggal,
            'status' => $this->status,
            'keterangan' => $this->keterangan,
        ];
    }
}
