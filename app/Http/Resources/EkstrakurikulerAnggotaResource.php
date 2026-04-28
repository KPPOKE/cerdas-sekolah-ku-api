<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class EkstrakurikulerAnggotaResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'ekstrakurikulerId' => $this->ekstrakurikuler_id,
            'siswaId' => $this->siswa_id,
            'createdAt' => $this->created_at,
            'siswa' => $this->whenLoaded('siswa', fn () => [
                'id' => $this->siswa?->id,
                'namaLengkap' => $this->siswa?->nama_lengkap,
                'status' => $this->siswa?->status,
                'kelasId' => $this->siswa?->kelas_id,
            ]),
            'ekstrakurikuler' => $this->whenLoaded('ekstrakurikuler', fn () => [
                'id' => $this->ekstrakurikuler?->id,
                'nama' => $this->ekstrakurikuler?->nama,
                'hari' => $this->ekstrakurikuler?->hari,
            ]),
        ];
    }
}
