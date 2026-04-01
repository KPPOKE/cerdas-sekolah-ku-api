<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class SiswaResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'kelasId' => $this->kelas_id,
            'namaLengkap' => $this->nama_lengkap,
            'nisn' => $this->nisn,
            'nik' => $this->nik,
            'tempatLahir' => $this->tempat_lahir,
            'tanggalLahir' => $this->tanggal_lahir,
            'umur' => $this->umur,
            'status' => $this->status,
            'jenisKelamin' => $this->jenis_kelamin,
            'alamat' => $this->alamat,
            'noTelepon' => $this->no_telepon,
            'kebutuhanKhusus' => $this->kebutuhan_khusus,
            'disabilitas' => $this->disabilitas,
            'nomorKipPip' => $this->nomor_kip_pip,
            'namaAyahKandung' => $this->nama_ayah_kandung,
            'namaIbuKandung' => $this->nama_ibu_kandung,
            'namaWali' => $this->nama_wali,
        ];
    }
}
