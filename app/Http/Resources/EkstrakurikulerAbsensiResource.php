<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class EkstrakurikulerAbsensiResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'ekstrakurikulerId' => $this->ekstrakurikuler_id,
            'siswaId' => $this->siswa_id,
            'tanggal' => $this->tanggal,
            'status' => $this->status,
            'keterangan' => $this->keterangan,
            'siswa' => $this->whenLoaded('siswa', fn () => [
                'id' => $this->siswa?->id,
                'namaLengkap' => $this->siswa?->nama_lengkap,
                'status' => $this->siswa?->status,
            ]),
        ];
    }
}
