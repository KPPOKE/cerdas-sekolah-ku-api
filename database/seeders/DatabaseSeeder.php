<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Guru;
use App\Models\TahunAjaran;
use App\Models\Semester;
use App\Models\MataPelajaran;
use App\Models\Kelas;
use App\Models\Siswa;
use App\Models\PengajaranGuru;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        Schema::disableForeignKeyConstraints();
        User::truncate();
        Guru::truncate();
        TahunAjaran::truncate();
        Semester::truncate();
        MataPelajaran::truncate();
        Kelas::truncate();
        Siswa::truncate();
        PengajaranGuru::truncate();
        Schema::enableForeignKeyConstraints();

        // --- UUID Maps ---
        $usersMap = [
            'u1' => Str::uuid()->toString(),
            'u2' => Str::uuid()->toString(),
            'u3' => Str::uuid()->toString(),
        ];

        $gurusMap = [
            'g1' => Str::uuid()->toString(),
            'g2' => Str::uuid()->toString(),
            'g3' => Str::uuid()->toString(),
        ];

        $taMap = [
            'ta1' => Str::uuid()->toString(),
        ];

        $smMap = [
            'sm1' => Str::uuid()->toString(),
            'sm2' => Str::uuid()->toString(),
        ];

        $mpMap = [
            'mp1' => Str::uuid()->toString(),
            'mp2' => Str::uuid()->toString(),
            'mp3' => Str::uuid()->toString(),
            'mp4' => Str::uuid()->toString(),
            'mp5' => Str::uuid()->toString(),
            'mp6' => Str::uuid()->toString(),
        ];

        // 10 kelas: 1A, 1B, 2A, 2B, 3A, 3B, 4A, 4B, 5A, 6A
        $kMap = [
            '1A' => Str::uuid()->toString(),
            '1B' => Str::uuid()->toString(),
            '2A' => Str::uuid()->toString(),
            '2B' => Str::uuid()->toString(),
            '3A' => Str::uuid()->toString(),
            '3B' => Str::uuid()->toString(),
            '4A' => Str::uuid()->toString(),
            '4B' => Str::uuid()->toString(),
            '5A' => Str::uuid()->toString(),
            '6A' => Str::uuid()->toString(),
        ];

        // 1. Users
        User::insert([
            ['id' => $usersMap['u1'], 'username' => 'admin', 'nama' => 'Administrator', 'role' => 'admin', 'email' => 'admin@mialhaqqjakarta.sch.id', 'password' => Hash::make('password')],
            ['id' => $usersMap['u2'], 'username' => '3175014501850001', 'nama' => 'Siti Aminah, S.Pd.I', 'role' => 'guru', 'email' => 'siti.aminah@mialhaqqjakarta.sch.id', 'password' => Hash::make('password')],
            ['id' => $usersMap['u3'], 'username' => '3175021503870002', 'nama' => 'Budi Santoso, S.Pd', 'role' => 'guru', 'email' => 'budi.santoso@mialhaqqjakarta.sch.id', 'password' => Hash::make('password')],
        ]);

        // 2. Gurus (new schema)
        $guruBase = [
            'alamat_kelurahan' => 'Cipinang Besar Selatan',
            'alamat_kecamatan' => 'Jatinegara',
            'alamat_kab_kota' => 'Jakarta Timur',
            'npsn' => '60710012',
            'nsm' => '111231710012',
            'madrasah_tempat_tugas' => 'MI Al-Haq Jakarta',
            'kecamatan_tugas' => 'Jatinegara',
            'suku_dinas_pendidikan' => 'Sudin Pendidikan Jakarta Timur',
        ];

        Guru::insert([
            array_merge($guruBase, [
                'id' => $gurusMap['g1'],
                'nama' => 'Siti Aminah, S.Pd.I',
                'nip' => '198501012010012001',
                'pangkat_golongan' => 'III/a',
                'tempat_lahir' => 'Jakarta',
                'tanggal_lahir' => '1985-01-01',
                'nik' => '3175014501850001',
                'peg_id' => null,
                'npk' => null,
                'nuptk' => '4533759660300052',
                'alamat_jalan' => 'Jl. Cipinang Besar Selatan No. 12 RT 005/RW 003',
                'status_pegawai' => 'PNS',
                'pendidikan_terakhir' => 'S1',
                'bidang_studi_pendidikan' => 'PGMI',
                'mapel_diampu' => 'Matematika',
                'status_sertifikasi' => 'Sudah',
                'bidang_studi_sertifikasi' => 'Guru Kelas MI',
                'nomor_peserta_sertifikasi' => '19850101201001',
                'nomor_sertifikat_pendidik' => 'SP.2015.001234',
                'sertifikasi_kedua' => null,
                'no_handphone' => '081234567890',
                'email' => 'siti.aminah@mialhaqqjakarta.sch.id',
                'keterangan' => null,
            ]),
            array_merge($guruBase, [
                'id' => $gurusMap['g2'],
                'nama' => 'Budi Santoso, S.Pd',
                'nip' => null,
                'pangkat_golongan' => null,
                'tempat_lahir' => 'Bandung',
                'tanggal_lahir' => '1987-03-15',
                'nik' => '3175021503870002',
                'peg_id' => null,
                'npk' => null,
                'nuptk' => '4547761662200043',
                'alamat_jalan' => 'Jl. Kebon Pala No. 5 RT 002/RW 004',
                'status_pegawai' => 'GTY',
                'pendidikan_terakhir' => 'S1',
                'bidang_studi_pendidikan' => 'Pendidikan Matematika',
                'mapel_diampu' => 'Matematika',
                'status_sertifikasi' => 'Belum',
                'bidang_studi_sertifikasi' => null,
                'nomor_peserta_sertifikasi' => null,
                'nomor_sertifikat_pendidik' => null,
                'sertifikasi_kedua' => null,
                'no_handphone' => '081298765432',
                'email' => 'budi.santoso@mialhaqqjakarta.sch.id',
                'keterangan' => null,
            ]),
            array_merge($guruBase, [
                'id' => $gurusMap['g3'],
                'nama' => 'Dewi Lestari, S.Pd',
                'nip' => null,
                'pangkat_golongan' => null,
                'tempat_lahir' => 'Surabaya',
                'tanggal_lahir' => '1990-02-20',
                'nik' => '3175032002900003',
                'peg_id' => null,
                'npk' => null,
                'nuptk' => null,
                'alamat_jalan' => 'Jl. Jatinegara Barat No. 8 RT 001/RW 006',
                'status_pegawai' => 'GTY',
                'pendidikan_terakhir' => 'S1',
                'bidang_studi_pendidikan' => 'Pendidikan IPA',
                'mapel_diampu' => 'IPA',
                'status_sertifikasi' => 'Belum',
                'bidang_studi_sertifikasi' => null,
                'nomor_peserta_sertifikasi' => null,
                'nomor_sertifikat_pendidik' => null,
                'sertifikasi_kedua' => null,
                'no_handphone' => '081356789012',
                'email' => 'dewi.lestari@mialhaqqjakarta.sch.id',
                'keterangan' => null,
            ]),
        ]);

        // 3. Tahun Ajaran
        TahunAjaran::insert([
            ['id' => $taMap['ta1'], 'nama' => '2025/2026', 'mulai' => '2025-07-14', 'selesai' => '2026-06-20', 'aktif' => true],
        ]);

        // 4. Semesters
        Semester::insert([
            ['id' => $smMap['sm1'], 'nama' => 'Semester 1 (Ganjil)', 'tahun_ajaran_id' => $taMap['ta1'], 'aktif' => false],
            ['id' => $smMap['sm2'], 'nama' => 'Semester 2 (Genap)', 'tahun_ajaran_id' => $taMap['ta1'], 'aktif' => true],
        ]);

        // 5. Mata Pelajaran
        MataPelajaran::insert([
            ['id' => $mpMap['mp1'], 'kode' => 'MTK', 'nama' => 'Matematika', 'deskripsi' => 'Pelajaran Matematika'],
            ['id' => $mpMap['mp2'], 'kode' => 'BIN', 'nama' => 'Bahasa Indonesia', 'deskripsi' => 'Pelajaran Bahasa Indonesia'],
            ['id' => $mpMap['mp3'], 'kode' => 'IPA', 'nama' => 'Ilmu Pengetahuan Alam', 'deskripsi' => 'Pelajaran IPA'],
            ['id' => $mpMap['mp4'], 'kode' => 'IPS', 'nama' => 'Ilmu Pengetahuan Sosial', 'deskripsi' => 'Pelajaran IPS'],
            ['id' => $mpMap['mp5'], 'kode' => 'PKN', 'nama' => 'Pendidikan Kewarganegaraan', 'deskripsi' => 'Pelajaran PKn'],
            ['id' => $mpMap['mp6'], 'kode' => 'AGM', 'nama' => 'Pendidikan Agama Islam', 'deskripsi' => 'Pelajaran Agama Islam'],
        ]);

        // 6. Kelas — 10 fixed classes, with wali kelas assigned
        Kelas::insert([
            ['id' => $kMap['1A'], 'tingkat' => 1, 'nama_kelas' => '1A', 'guru_id' => $gurusMap['g1']],
            ['id' => $kMap['1B'], 'tingkat' => 1, 'nama_kelas' => '1B', 'guru_id' => $gurusMap['g2']],
            ['id' => $kMap['2A'], 'tingkat' => 2, 'nama_kelas' => '2A', 'guru_id' => $gurusMap['g3']],
            ['id' => $kMap['2B'], 'tingkat' => 2, 'nama_kelas' => '2B', 'guru_id' => null],
            ['id' => $kMap['3A'], 'tingkat' => 3, 'nama_kelas' => '3A', 'guru_id' => null],
            ['id' => $kMap['3B'], 'tingkat' => 3, 'nama_kelas' => '3B', 'guru_id' => null],
            ['id' => $kMap['4A'], 'tingkat' => 4, 'nama_kelas' => '4A', 'guru_id' => null],
            ['id' => $kMap['4B'], 'tingkat' => 4, 'nama_kelas' => '4B', 'guru_id' => null],
            ['id' => $kMap['5A'], 'tingkat' => 5, 'nama_kelas' => '5A', 'guru_id' => null],
            ['id' => $kMap['6A'], 'tingkat' => 6, 'nama_kelas' => '6A', 'guru_id' => null],
        ]);

        // 7. Siswas (new schema)
        Siswa::insert([
            ['id' => Str::uuid()->toString(), 'kelas_id' => $kMap['1A'], 'nama_lengkap' => 'Ahmad Rizki Pratama', 'nisn' => '0081234001', 'nik' => '3175040512180001', 'tempat_lahir' => 'Jakarta', 'tanggal_lahir' => '2018-05-12', 'umur' => '7 th, 10 bln', 'status' => 'Aktif', 'jenis_kelamin' => 'Laki-laki', 'alamat' => 'Jl. Mawar No. 3 RT 001/RW 002, Cipinang Besar Selatan', 'no_telepon' => '081200001111', 'kebutuhan_khusus' => null, 'disabilitas' => null, 'nomor_kip_pip' => null, 'nama_ayah_kandung' => 'Hendra Rizki', 'nama_ibu_kandung' => 'Sari Wulan', 'nama_wali' => null],
            ['id' => Str::uuid()->toString(), 'kelas_id' => $kMap['1A'], 'nama_lengkap' => 'Putri Amelia Zahra', 'nisn' => '0081234002', 'nik' => '3175044808180002', 'tempat_lahir' => 'Bogor', 'tanggal_lahir' => '2018-08-22', 'umur' => '7 th, 7 bln', 'status' => 'Aktif', 'jenis_kelamin' => 'Perempuan', 'alamat' => 'Jl. Dahlia No. 7 RT 003/RW 005, Cipinang Besar Selatan', 'no_telepon' => '081200002222', 'kebutuhan_khusus' => null, 'disabilitas' => null, 'nomor_kip_pip' => null, 'nama_ayah_kandung' => 'Rudi Amelia', 'nama_ibu_kandung' => 'Rina Sari', 'nama_wali' => null],
            ['id' => Str::uuid()->toString(), 'kelas_id' => $kMap['1B'], 'nama_lengkap' => 'Bima Prasetya Nugroho', 'nisn' => '0081234003', 'nik' => '3175041003170003', 'tempat_lahir' => 'Depok', 'tanggal_lahir' => '2017-03-10', 'umur' => '9 th, 0 bln', 'status' => 'Aktif', 'jenis_kelamin' => 'Laki-laki', 'alamat' => 'Jl. Cemara No. 15 RT 004/RW 006, Jatinegara', 'no_telepon' => '081200003333', 'kebutuhan_khusus' => null, 'disabilitas' => null, 'nomor_kip_pip' => null, 'nama_ayah_kandung' => 'Andi Prasetya', 'nama_ibu_kandung' => 'Lina Marlina', 'nama_wali' => null],
            ['id' => Str::uuid()->toString(), 'kelas_id' => $kMap['2A'], 'nama_lengkap' => 'Citra Dewi Safitri', 'nisn' => '0081234004', 'nik' => '3175044511170004', 'tempat_lahir' => 'Tangerang', 'tanggal_lahir' => '2017-11-05', 'umur' => '8 th, 4 bln', 'status' => 'Aktif', 'jenis_kelamin' => 'Perempuan', 'alamat' => 'Jl. Flamboyan No. 20 RT 002/RW 001, Kebon Pala', 'no_telepon' => '081200004444', 'kebutuhan_khusus' => null, 'disabilitas' => null, 'nomor_kip_pip' => null, 'nama_ayah_kandung' => 'Joko Dewi', 'nama_ibu_kandung' => 'Maria Dewi', 'nama_wali' => null],
            ['id' => Str::uuid()->toString(), 'kelas_id' => $kMap['3A'], 'nama_lengkap' => 'Dani Saputra Firmansyah', 'nisn' => '0081234005', 'nik' => '3175041807160005', 'tempat_lahir' => 'Bekasi', 'tanggal_lahir' => '2016-07-18', 'umur' => '9 th, 8 bln', 'status' => 'Aktif', 'jenis_kelamin' => 'Laki-laki', 'alamat' => 'Jl. Kamboja No. 9 RT 005/RW 008, Cipinang Muara', 'no_telepon' => '081200005555', 'kebutuhan_khusus' => null, 'disabilitas' => null, 'nomor_kip_pip' => null, 'nama_ayah_kandung' => 'Udin Saputra', 'nama_ibu_kandung' => 'Nur Hasanah', 'nama_wali' => null],
            ['id' => Str::uuid()->toString(), 'kelas_id' => $kMap['4A'], 'nama_lengkap' => 'Eka Putri Ramadhani', 'nisn' => '0081234006', 'nik' => '3175042501160006', 'tempat_lahir' => 'Jakarta', 'tanggal_lahir' => '2016-01-25', 'umur' => '10 th, 2 bln', 'status' => 'Aktif', 'jenis_kelamin' => 'Perempuan', 'alamat' => 'Jl. Teratai No. 11 RT 006/RW 003, Cipinang Besar Selatan', 'no_telepon' => '081200006666', 'kebutuhan_khusus' => null, 'disabilitas' => null, 'nomor_kip_pip' => null, 'nama_ayah_kandung' => 'Bambang Eko', 'nama_ibu_kandung' => 'Sri Mulyani', 'nama_wali' => null],
            ['id' => Str::uuid()->toString(), 'kelas_id' => $kMap['5A'], 'nama_lengkap' => 'Fajar Nugroho Wibowo', 'nisn' => '0081234007', 'nik' => '3175043004150007', 'tempat_lahir' => 'Semarang', 'tanggal_lahir' => '2015-04-30', 'umur' => '10 th, 11 bln', 'status' => 'Aktif', 'jenis_kelamin' => 'Laki-laki', 'alamat' => 'Jl. Sakura No. 4 RT 003/RW 007, Jatinegara', 'no_telepon' => '081200007777', 'kebutuhan_khusus' => null, 'disabilitas' => null, 'nomor_kip_pip' => null, 'nama_ayah_kandung' => 'Surya Nugroho', 'nama_ibu_kandung' => 'Dewi Nugroho', 'nama_wali' => null],
            ['id' => Str::uuid()->toString(), 'kelas_id' => $kMap['6A'], 'nama_lengkap' => 'Gina Rahmawati Putri', 'nisn' => '0081234008', 'nik' => '3175041409150008', 'tempat_lahir' => 'Yogyakarta', 'tanggal_lahir' => '2015-09-14', 'umur' => '10 th, 6 bln', 'status' => 'Aktif', 'jenis_kelamin' => 'Perempuan', 'alamat' => 'Jl. Bougenville No. 16 RT 001/RW 004, Kebon Pala', 'no_telepon' => '081200008888', 'kebutuhan_khusus' => null, 'disabilitas' => null, 'nomor_kip_pip' => null, 'nama_ayah_kandung' => 'Agus Rahman', 'nama_ibu_kandung' => 'Fitri Rahmawati', 'nama_wali' => null],
        ]);

        // 8. Pengajaran Gurus
        PengajaranGuru::insert([
            ['id' => Str::uuid()->toString(), 'guru_id' => $gurusMap['g1'], 'kelas_id' => $kMap['1A'], 'mata_pelajaran_id' => $mpMap['mp1'], 'semester_id' => $smMap['sm2']],
            ['id' => Str::uuid()->toString(), 'guru_id' => $gurusMap['g1'], 'kelas_id' => $kMap['1A'], 'mata_pelajaran_id' => $mpMap['mp2'], 'semester_id' => $smMap['sm2']],
            ['id' => Str::uuid()->toString(), 'guru_id' => $gurusMap['g2'], 'kelas_id' => $kMap['1B'], 'mata_pelajaran_id' => $mpMap['mp1'], 'semester_id' => $smMap['sm2']],
            ['id' => Str::uuid()->toString(), 'guru_id' => $gurusMap['g2'], 'kelas_id' => $kMap['2A'], 'mata_pelajaran_id' => $mpMap['mp4'], 'semester_id' => $smMap['sm2']],
            ['id' => Str::uuid()->toString(), 'guru_id' => $gurusMap['g3'], 'kelas_id' => $kMap['3A'], 'mata_pelajaran_id' => $mpMap['mp3'], 'semester_id' => $smMap['sm2']],
            ['id' => Str::uuid()->toString(), 'guru_id' => $gurusMap['g3'], 'kelas_id' => $kMap['5A'], 'mata_pelajaran_id' => $mpMap['mp5'], 'semester_id' => $smMap['sm2']],
        ]);
    }
}
