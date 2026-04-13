<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

use App\Http\Controllers\Api\GuruController;
use App\Http\Controllers\Api\SiswaController;
use App\Http\Controllers\Api\KelasController;
use App\Http\Controllers\Api\MataPelajaranController;
use App\Http\Controllers\Api\PengajaranGuruController;
use App\Http\Controllers\Api\TahunAjaranController;
use App\Http\Controllers\Api\SemesterController;
use App\Http\Controllers\Api\ImportController;
use App\Http\Controllers\Api\EkstrakurikulerController;
use App\Http\Controllers\Api\PpdbController;

// Auth Routes
Route::post('/login', [AuthController::class, 'login']);

// Public PPDB Routes (no auth required)
Route::post('/ppdb/register', [PpdbController::class, 'store']);
Route::post('/ppdb/cek-status', [PpdbController::class, 'checkStatus']);

// Protected Routes
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/me', [AuthController::class, 'me']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::post('/change-password', [AuthController::class, 'changePassword']);

    Route::apiResource('guru', GuruController::class);
    Route::apiResource('siswa', SiswaController::class);
    Route::apiResource('kelas', KelasController::class);
    Route::apiResource('mata-pelajaran', MataPelajaranController::class);
    Route::apiResource('tahun-ajaran', TahunAjaranController::class);
    Route::apiResource('pengajaran', PengajaranGuruController::class);

    // Custom route to toggle active tahun ajaran
    Route::put('tahun-ajaran/{id}/toggle-aktif', [TahunAjaranController::class, 'toggleAktif']);

    // Admin reset guru password
    Route::post('guru/{id}/reset-password', [GuruController::class, 'resetPassword']);

    // Semester is read-only for now
    Route::get('semester', [SemesterController::class, 'index']);

    // CSV Import
    Route::post('import/siswa', [ImportController::class, 'importSiswa']);
    Route::post('import/guru', [ImportController::class, 'importGuru']);

    // PPDB Admin
    Route::get('ppdb', [PpdbController::class, 'index']);
    Route::put('ppdb/{id}/status', [PpdbController::class, 'updateStatus']);
    Route::post('ppdb/terima-siswa', [PpdbController::class, 'terimaSiswa']);

    // Ekstrakurikuler
    Route::get('ekstrakurikuler', [EkstrakurikulerController::class, 'getEkskul']);
    Route::post('ekstrakurikuler', [EkstrakurikulerController::class, 'storeEkskul']);

    // Anggota Ekskul
    Route::get('ekstrakurikuler-anggota', [EkstrakurikulerController::class, 'getAnggota']);
    Route::post('ekstrakurikuler-anggota', [EkstrakurikulerController::class, 'storeAnggota']);

    // Absensi Ekskul
    Route::get('ekstrakurikuler-absensi', [EkstrakurikulerController::class, 'getAbsensi']);
    Route::post('ekstrakurikuler-absensi', [EkstrakurikulerController::class, 'saveAbsensi']);

    // Users with role guru or pelatih (for ekskul coach dropdown)
    Route::get('users-guru', function () {
        return \App\Models\User::whereIn('role', ['guru', 'pelatih'])->select('id', 'nama', 'email', 'role')->get();
    });

    // Quick create pelatih eksternal
    Route::post('pelatih', function (Request $request) {
        $validated = $request->validate([
            'nama' => 'required|string|max:255',
            'username' => 'required|string|unique:users,username',
        ]);
        
        $user = \App\Models\User::create([
            'nama' => $validated['nama'],
            'username' => $validated['username'],
            'email' => $validated['username'] . '@madrasah.id',
            'password' => \Illuminate\Support\Facades\Hash::make('password123'),
            'role' => 'pelatih',
        ]);
        return response()->json($user, 201);
    });
});
