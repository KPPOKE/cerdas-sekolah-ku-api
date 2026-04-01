<?php

// @formatter:off
// phpcs:ignoreFile
/**
 * A helper file for your Eloquent Models
 * Copy the phpDocs from this file to the correct Model,
 * And remove them from this file, to prevent double declarations.
 *
 * @author Barry vd. Heuvel <barryvdh@gmail.com>
 */


namespace App\Models{
/**
 * @property string $id
 * @property string $siswa_id
 * @property string $kelas_id
 * @property string $tanggal
 * @property string $status
 * @property string|null $keterangan
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Kelas $kelas
 * @property-read \App\Models\Siswa $siswa
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Absensi newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Absensi newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Absensi query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Absensi whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Absensi whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Absensi whereKelasId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Absensi whereKeterangan($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Absensi whereSiswaId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Absensi whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Absensi whereTanggal($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Absensi whereUpdatedAt($value)
 */
	class Absensi extends \Eloquent {}
}

namespace App\Models{
/**
 * @property string $id
 * @property string $nip
 * @property string $nama
 * @property string $tempat_lahir
 * @property string $tanggal_lahir
 * @property string $jenis_kelamin
 * @property string $agama
 * @property string $alamat
 * @property string $telepon
 * @property string $email
 * @property string $pendidikan
 * @property string|null $foto
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Kelas> $kelas
 * @property-read int|null $kelas_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\PengajaranGuru> $pengajaranGurus
 * @property-read int|null $pengajaran_gurus_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereAgama($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereAlamat($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereFoto($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereJenisKelamin($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereNama($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereNip($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru wherePendidikan($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereTanggalLahir($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereTelepon($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereTempatLahir($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Guru whereUpdatedAt($value)
 */
	class Guru extends \Eloquent {}
}

namespace App\Models{
/**
 * @property string $id
 * @property string $nama
 * @property int $tingkat
 * @property string $tahun_ajaran_id
 * @property string $guru_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Siswa> $siswas
 * @property-read int|null $siswas_count
 * @property-read \App\Models\TahunAjaran $tahunAjaran
 * @property-read \App\Models\Guru $waliKelas
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Kelas newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Kelas newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Kelas query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Kelas whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Kelas whereGuruId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Kelas whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Kelas whereNama($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Kelas whereTahunAjaranId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Kelas whereTingkat($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Kelas whereUpdatedAt($value)
 */
	class Kelas extends \Eloquent {}
}

namespace App\Models{
/**
 * @property string $id
 * @property string $kode
 * @property string $nama
 * @property string|null $deskripsi
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Nilai> $nilais
 * @property-read int|null $nilais_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\PengajaranGuru> $pengajaranGurus
 * @property-read int|null $pengajaran_gurus_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MataPelajaran newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MataPelajaran newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MataPelajaran query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MataPelajaran whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MataPelajaran whereDeskripsi($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MataPelajaran whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MataPelajaran whereKode($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MataPelajaran whereNama($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MataPelajaran whereUpdatedAt($value)
 */
	class MataPelajaran extends \Eloquent {}
}

namespace App\Models{
/**
 * @property string $id
 * @property string $siswa_id
 * @property string $mata_pelajaran_id
 * @property string $kelas_id
 * @property string $semester_id
 * @property int $tugas
 * @property int $uts
 * @property int $uas
 * @property float $rata_rata
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Kelas $kelas
 * @property-read \App\Models\MataPelajaran $mataPelajaran
 * @property-read \App\Models\Semester $semester
 * @property-read \App\Models\Siswa $siswa
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai whereKelasId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai whereMataPelajaranId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai whereRataRata($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai whereSemesterId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai whereSiswaId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai whereTugas($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai whereUas($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Nilai whereUts($value)
 */
	class Nilai extends \Eloquent {}
}

namespace App\Models{
/**
 * @property string $id
 * @property string $guru_id
 * @property string $kelas_id
 * @property string $mata_pelajaran_id
 * @property string $semester_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Guru $guru
 * @property-read \App\Models\Kelas $kelas
 * @property-read \App\Models\MataPelajaran $mataPelajaran
 * @property-read \App\Models\Semester $semester
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PengajaranGuru newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PengajaranGuru newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PengajaranGuru query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PengajaranGuru whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PengajaranGuru whereGuruId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PengajaranGuru whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PengajaranGuru whereKelasId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PengajaranGuru whereMataPelajaranId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PengajaranGuru whereSemesterId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PengajaranGuru whereUpdatedAt($value)
 */
	class PengajaranGuru extends \Eloquent {}
}

namespace App\Models{
/**
 * @property string $id
 * @property string $nama
 * @property string $tahun_ajaran_id
 * @property bool $aktif
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Nilai> $nilais
 * @property-read int|null $nilais_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\PengajaranGuru> $pengajaranGurus
 * @property-read int|null $pengajaran_gurus_count
 * @property-read \App\Models\TahunAjaran $tahunAjaran
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Semester newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Semester newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Semester query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Semester whereAktif($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Semester whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Semester whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Semester whereNama($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Semester whereTahunAjaranId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Semester whereUpdatedAt($value)
 */
	class Semester extends \Eloquent {}
}

namespace App\Models{
/**
 * @property string $id
 * @property string $nis
 * @property string $nama
 * @property string $tempat_lahir
 * @property string $tanggal_lahir
 * @property string $jenis_kelamin
 * @property string $agama
 * @property string $alamat
 * @property string $kelas_id
 * @property string $nama_ayah
 * @property string $nama_ibu
 * @property string $telepon_ortu
 * @property string|null $foto
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Absensi> $absensis
 * @property-read int|null $absensis_count
 * @property-read \App\Models\Kelas $kelas
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Nilai> $nilais
 * @property-read int|null $nilais_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereAgama($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereAlamat($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereFoto($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereJenisKelamin($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereKelasId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereNama($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereNamaAyah($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereNamaIbu($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereNis($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereTanggalLahir($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereTeleponOrtu($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereTempatLahir($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Siswa whereUpdatedAt($value)
 */
	class Siswa extends \Eloquent {}
}

namespace App\Models{
/**
 * @property string $id
 * @property string $nama
 * @property string $mulai
 * @property string $selesai
 * @property bool $aktif
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Kelas> $kelas
 * @property-read int|null $kelas_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Semester> $semesters
 * @property-read int|null $semesters_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|TahunAjaran newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|TahunAjaran newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|TahunAjaran query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|TahunAjaran whereAktif($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|TahunAjaran whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|TahunAjaran whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|TahunAjaran whereMulai($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|TahunAjaran whereNama($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|TahunAjaran whereSelesai($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|TahunAjaran whereUpdatedAt($value)
 */
	class TahunAjaran extends \Eloquent {}
}

namespace App\Models{
/**
 * @property string $id
 * @property string $username
 * @property string $nama
 * @property string $role
 * @property string $email
 * @property \Illuminate\Support\Carbon|null $email_verified_at
 * @property string $password
 * @property string|null $remember_token
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection<int, \Illuminate\Notifications\DatabaseNotification> $notifications
 * @property-read int|null $notifications_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \Laravel\Sanctum\PersonalAccessToken> $tokens
 * @property-read int|null $tokens_count
 * @method static \Database\Factories\UserFactory factory($count = null, $state = [])
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereEmailVerifiedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereNama($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereRole($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereUsername($value)
 */
	class User extends \Eloquent {}
}

