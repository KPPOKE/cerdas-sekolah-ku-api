<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PpdbPendaftarResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'nik' => $this->nik,
            'namaLengkap' => $this->nama_lengkap,
            'tempatLahir' => $this->tempat_lahir,
            'tanggalLahir' => $this->tanggal_lahir,
            'jenisKelamin' => $this->jenis_kelamin,
            'namaAyah' => $this->nama_ayah,
            'namaIbu' => $this->nama_ibu,
            'pekerjaanAyah' => $this->pekerjaan_ayah,
            'pekerjaanIbu' => $this->pekerjaan_ibu,
            'noWa' => $this->no_wa,
            'alamat' => $this->alamat,
            'berkasPasFoto' => $this->berkas_pas_foto,
            'berkasKk' => $this->berkas_kk,
            'berkasAktaKelahiran' => $this->berkas_akta_kelahiran,
            'status' => $this->status,
            'createdAt' => $this->created_at,
        ];
    }
}
