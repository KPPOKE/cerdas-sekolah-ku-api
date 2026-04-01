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

// Auth Routes
Route::post('/login', [AuthController::class, 'login']);

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
});
