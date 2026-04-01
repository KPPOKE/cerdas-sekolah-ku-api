<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Guru;
use App\Models\Siswa;
use App\Models\Kelas;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class ImportController extends Controller
{
    /**
     * Import siswa from a semicolon-delimited CSV file.
     * Expected headers: No;Nama Lengkap;NISN;NIK;Tempat Lahir;Tanggal Lahir;Tingkat - Rombel;Umur;Status;Jenis Kelamin;Alamat;No Telepon;Kebutuhan Khusus;Disabilitas;Nomor KIP/PIP;Nama Ayah Kandung;Nama Ibu Kandung;Nama Wali
     */
    public function importSiswa(Request $request)
    {
        $request->validate([
            'file' => 'required|file|mimes:csv,txt|max:2048',
        ]);

        $file = $request->file('file');
        $handle = fopen($file->getRealPath(), 'r');

        if (!$handle) {
            return response()->json(['message' => 'Gagal membaca file'], 400);
        }

        // Preload all kelas for lookup
        $kelasMap = [];
        $allKelas = Kelas::all();
        foreach ($allKelas as $k) {
            $kelasMap[$k->nama_kelas] = $k->id;
        }

        $rows = [];
        $lineNum = 0;
        $skipped = 0;

        while (($line = fgets($handle)) !== false) {
            $lineNum++;

            // Skip header row
            if ($lineNum === 1) continue;

            // Parse semicolon-delimited
            $cols = str_getcsv($line, ';');

            // Skip empty rows (all empty or just semicolons)
            if (count($cols) < 2 || empty(trim($cols[1] ?? ''))) {
                $skipped++;
                continue;
            }

            // Column mapping (0-indexed):
            // 0: No, 1: Nama Lengkap, 2: NISN, 3: NIK, 4: Tempat Lahir
            // 5: Tanggal Lahir, 6: Tingkat - Rombel, 7: Umur, 8: Status, 9: Jenis Kelamin
            // 10: Alamat, 11: No Telepon, 12: Kebutuhan Khusus, 13: Disabilitas
            // 14: Nomor KIP/PIP, 15: Nama Ayah Kandung, 16: Nama Ibu Kandung, 17: Nama Wali

            $namaLengkap = trim($cols[1] ?? '');
            $nisn = $this->cleanValue($cols[2] ?? '');
            $nik = ltrim(trim($cols[3] ?? ''), "'"); // Remove leading quote
            $tempatLahir = trim($cols[4] ?? '');
            $tanggalLahir = $this->parseDate($cols[5] ?? '');
            $rombel = trim($cols[6] ?? '');
            $umur = $this->cleanValue($cols[7] ?? '');
            $status = trim($cols[8] ?? 'Aktif');
            $jenisKelamin = trim($cols[9] ?? '');
            $alamat = trim($cols[10] ?? '');
            $noTelepon = $this->cleanValue($cols[11] ?? '');
            $kebutuhanKhusus = $this->cleanValue($cols[12] ?? '');
            $disabilitas = $this->cleanValue($cols[13] ?? '');
            $nomorKipPip = $this->cleanValue($cols[14] ?? '');
            $namaAyah = $this->cleanValue($cols[15] ?? '');
            $namaIbu = $this->cleanValue($cols[16] ?? '');
            $namaWali = $this->cleanValue($cols[17] ?? '');

            // Map "Kelas X - 0Y" to kelas name like "XA" or "XB"
            $kelasId = $this->rombelToKelasId($rombel, $kelasMap);

            if (!$kelasId) {
                $skipped++;
                continue;
            }

            $rows[] = [
                'id' => Str::uuid()->toString(),
                'kelas_id' => $kelasId,
                'nama_lengkap' => $namaLengkap,
                'nisn' => $nisn ?: null,
                'nik' => $nik ?: null,
                'tempat_lahir' => $tempatLahir,
                'tanggal_lahir' => $tanggalLahir,
                'umur' => $umur ?: null,
                'status' => $status ?: 'Aktif',
                'jenis_kelamin' => $jenisKelamin,
                'alamat' => $alamat,
                'no_telepon' => $noTelepon ?: null,
                'kebutuhan_khusus' => $kebutuhanKhusus ?: null,
                'disabilitas' => $disabilitas ?: null,
                'nomor_kip_pip' => $nomorKipPip ?: null,
                'nama_ayah_kandung' => $namaAyah ?: null,
                'nama_ibu_kandung' => $namaIbu ?: null,
                'nama_wali' => $namaWali ?: null,
                'created_at' => now(),
                'updated_at' => now(),
            ];
        }

        fclose($handle);

        if (empty($rows)) {
            return response()->json(['message' => 'Tidak ada data valid dalam file'], 400);
        }

        // Bulk insert in chunks of 100
        foreach (array_chunk($rows, 100) as $chunk) {
            Siswa::insert($chunk);
        }

        return response()->json([
            'message' => "Berhasil mengimpor " . count($rows) . " data siswa" . ($skipped > 0 ? " ({$skipped} baris dilewati)" : ''),
            'imported' => count($rows),
            'skipped' => $skipped,
        ]);
    }

    /**
     * Import guru from a semicolon-delimited CSV file.
     * Data starts on row 4 (rows 1-3 are headers/numbering).
     */
    public function importGuru(Request $request)
    {
        $request->validate([
            'file' => 'required|file|mimes:csv,txt|max:2048',
        ]);

        $file = $request->file('file');
        $handle = fopen($file->getRealPath(), 'r');

        if (!$handle) {
            return response()->json(['message' => 'Gagal membaca file'], 400);
        }

        $rows = [];
        $users = [];
        $lineNum = 0;
        $skipped = 0;

        while (($line = fgets($handle)) !== false) {
            $lineNum++;

            // Skip header rows (1-3)
            if ($lineNum <= 3) continue;

            $cols = str_getcsv($line, ';');

            // Stop at "DST" or empty rows
            $firstCol = trim($cols[0] ?? '');
            if (strtoupper($firstCol) === 'DST' || empty($firstCol) || !is_numeric($firstCol)) {
                break;
            }

            // Column mapping (0-indexed):
            // 0: NO, 1: NAMA, 2: NIP, 3: PANGKAT/GOLONGAN, 4: TEMPAT LAHIR
            // 5: TANGGAL LAHIR, 6: NIK, 7: Peg_ID, 8: NPK, 9: NUPTK
            // 10: JALAN, 11: KELURAHAN, 12: KECAMATAN, 13: KAB./KOTA
            // 14: STATUS PEGAWAI, 15: NPSN, 16: NSM, 17: MADRASAH TEMPAT TUGAS
            // 18: KECAMATAN, 19: SUKU DINAS PENDIDIKAN WILAYAH
            // 20: PENDIDIKAN TERAKHIR, 21: BIDANG STUDI PENDIDIKAN
            // 22: MAPEL YANG DIAMPU SEKARANG
            // 23: SUDAH SERTIFIKASI ATAU BELUM, 24: BIDANG STUDI SERTIFIKASI
            // 25: NOMOR PESERTA SERTIFIKASI, 26: NOMOR SERTIFIKAT PENDIDIK
            // 27: SERTIFIKASI KE-2, 28: NO HANDPHONE, 29: ALAMAT GMAIL, 30: KETERANGAN

            $nama = trim($cols[1] ?? '');
            $nik = trim($cols[6] ?? '');

            if (empty($nama) || empty($nik)) {
                $skipped++;
                continue;
            }

            $guruId = Str::uuid()->toString();

            $rows[] = [
                'id' => $guruId,
                'nama' => $nama,
                'nip' => $this->nullIfDash($cols[2] ?? ''),
                'pangkat_golongan' => $this->nullIfDash($cols[3] ?? ''),
                'tempat_lahir' => trim($cols[4] ?? ''),
                'tanggal_lahir' => $this->parseDate($cols[5] ?? ''),
                'nik' => $nik,
                'peg_id' => $this->nullIfDash($cols[7] ?? ''),
                'npk' => $this->nullIfDash($cols[8] ?? ''),
                'nuptk' => $this->nullIfDash($cols[9] ?? ''),
                'alamat_jalan' => trim($cols[10] ?? ''),
                'alamat_kelurahan' => trim($cols[11] ?? ''),
                'alamat_kecamatan' => trim($cols[12] ?? ''),
                'alamat_kab_kota' => trim($cols[13] ?? ''),
                'status_pegawai' => trim($cols[14] ?? ''),
                'npsn' => $this->nullIfDash($cols[15] ?? ''),
                'nsm' => $this->nullIfDash($cols[16] ?? ''),
                'madrasah_tempat_tugas' => trim($cols[17] ?? ''),
                'kecamatan_tugas' => trim($cols[18] ?? ''),
                'suku_dinas_pendidikan' => trim($cols[19] ?? ''),
                'pendidikan_terakhir' => trim($cols[20] ?? ''),
                'bidang_studi_pendidikan' => $this->nullIfDash($cols[21] ?? ''),
                'mapel_diampu' => $this->nullIfDash($cols[22] ?? ''),
                'status_sertifikasi' => $this->mapSertifikasi($cols[23] ?? ''),
                'bidang_studi_sertifikasi' => $this->nullIfDash($cols[24] ?? ''),
                'nomor_peserta_sertifikasi' => $this->nullIfDash($cols[25] ?? ''),
                'nomor_sertifikat_pendidik' => $this->nullIfDash($cols[26] ?? ''),
                'sertifikasi_kedua' => $this->nullIfDash($cols[27] ?? ''),
                'no_handphone' => $this->nullIfDash($cols[28] ?? ''),
                'email' => $this->nullIfDash($cols[29] ?? ''),
                'keterangan' => $this->nullIfDash($cols[30] ?? ''),
                'created_at' => now(),
                'updated_at' => now(),
            ];

            // Auto-create user account for each guru
            $nip = $this->nullIfDash($cols[2] ?? '');
            $username = $nip ?? $nik;

            $users[] = [
                'id' => Str::uuid()->toString(),
                'username' => $username,
                'nama' => $nama,
                'role' => 'guru',
                'email' => trim($cols[29] ?? '') ?: $nik . '@mialhaqqjakarta.sch.id',
                'password' => Hash::make('password'),
                'must_change_password' => true,
            ];
        }

        fclose($handle);

        if (empty($rows)) {
            return response()->json(['message' => 'Tidak ada data valid dalam file'], 400);
        }

        DB::transaction(function () use ($rows, $users) {
            foreach (array_chunk($rows, 100) as $chunk) {
                Guru::insert($chunk);
            }
            foreach (array_chunk($users, 100) as $chunk) {
                User::insert($chunk);
            }
        });

        return response()->json([
            'message' => "Berhasil mengimpor " . count($rows) . " data guru dengan akun pengguna",
            'imported' => count($rows),
            'skipped' => $skipped,
        ]);
    }

    // --- Helper Methods ---

    /**
     * Map "Kelas X - 0Y" to kelas name like "XA" or "XB"
     */
    private function rombelToKelasId(string $rombel, array $kelasMap): ?string
    {
        // Pattern: "Kelas 1 - 01" or "Kelas 5 - 01"
        if (!preg_match('/Kelas\s+(\d+)\s*-\s*(\d+)/i', $rombel, $m)) {
            return null;
        }

        $tingkat = (int) $m[1];
        $suffix = (int) $m[2];

        // Map suffix: 01=A, 02=B
        $letter = chr(ord('A') + $suffix - 1); // 1→A, 2→B

        $namaKelas = $tingkat . $letter;

        return $kelasMap[$namaKelas] ?? null;
    }

    private function cleanValue(?string $val): ?string
    {
        $val = trim($val ?? '');
        return ($val === '' || $val === '0') ? null : $val;
    }

    private function nullIfDash(?string $val): ?string
    {
        $val = trim($val ?? '');
        return ($val === '' || $val === '-') ? null : $val;
    }

    private function parseDate(?string $val): ?string
    {
        $val = trim($val ?? '');
        if (empty($val)) return null;

        // Already in YYYY-MM-DD format
        if (preg_match('/^\d{4}-\d{2}-\d{2}$/', $val)) {
            return $val;
        }

        // DD-MM-YYYY format (guru CSV)
        if (preg_match('/^(\d{2})-(\d{2})-(\d{4})$/', $val, $m)) {
            return "{$m[3]}-{$m[2]}-{$m[1]}";
        }

        return $val;
    }

    private function mapSertifikasi(?string $val): ?string
    {
        $val = trim($val ?? '');
        if (stripos($val, 'Sudah') !== false) return 'Sudah';
        if (stripos($val, 'Belum') !== false) return 'Belum';
        if (stripos($val, 'Proses') !== false) return 'Proses';
        return $val ?: null;
    }
}
