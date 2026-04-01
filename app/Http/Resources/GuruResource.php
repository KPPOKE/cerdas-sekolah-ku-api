<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class GuruResource extends JsonResource
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
            // Identitas
            'nama' => $this->nama,
            'nip' => $this->nip,
            'pangkatGolongan' => $this->pangkat_golongan,
            'nik' => $this->nik,
            'pegId' => $this->peg_id,
            'npk' => $this->npk,
            'nuptk' => $this->nuptk,
            // Pribadi
            'tempatLahir' => $this->tempat_lahir,
            'tanggalLahir' => $this->tanggal_lahir,
            // Alamat
            'alamatJalan' => $this->alamat_jalan,
            'alamatKelurahan' => $this->alamat_kelurahan,
            'alamatKecamatan' => $this->alamat_kecamatan,
            'alamatKabKota' => $this->alamat_kab_kota,
            // Kepegawaian
            'statusPegawai' => $this->status_pegawai,
            'npsn' => $this->npsn,
            'nsm' => $this->nsm,
            'madrasahTempatTugas' => $this->madrasah_tempat_tugas,
            'kecamatanTugas' => $this->kecamatan_tugas,
            'sukuDinasPendidikan' => $this->suku_dinas_pendidikan,
            // Pendidikan
            'pendidikanTerakhir' => $this->pendidikan_terakhir,
            'bidangStudiPendidikan' => $this->bidang_studi_pendidikan,
            'mapelDiampu' => $this->mapel_diampu,
            // Sertifikasi
            'statusSertifikasi' => $this->status_sertifikasi,
            'bidangStudiSertifikasi' => $this->bidang_studi_sertifikasi,
            'nomorPesertaSertifikasi' => $this->nomor_peserta_sertifikasi,
            'nomorSertifikatPendidik' => $this->nomor_sertifikat_pendidik,
            'sertifikasiKedua' => $this->sertifikasi_kedua,
            // Kontak
            'noHandphone' => $this->no_handphone,
            'email' => $this->email,
            // Lain-lain
            'keterangan' => $this->keterangan,
        ];
    }
}
