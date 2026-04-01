<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'username' => 'required|string',
            'password' => 'required|string',
        ]);

        if (!Auth::attempt($request->only('username', 'password'))) {
            return response()->json([
                'message' => 'Invalid login credentials'
            ], 401);
        }

        $user = User::where('username', $request->username)->firstOrFail();

        // Delete existing tokens to only allow one active session
        $user->tokens()->delete();

        $token = $user->createToken('auth_token')->plainTextToken;

        $guruId = null;
        if ($user->role === 'guru') {
            $guru = \App\Models\Guru::where('email', $user->email)->first();
            if ($guru) {
                $guruId = $guru->id;
            }
        }

        return response()->json([
            'token' => $token,
            'user' => [
                'id' => $user->id,
                'username' => $user->username,
                'nama' => $user->nama,
                'role' => $user->role,
                'email' => $user->email,
                'guruId' => $guruId,
                'mustChangePassword' => (bool) $user->must_change_password,
            ]
        ]);
    }

    public function me(Request $request)
    {
        $user = $request->user();
        
        $guruId = null;
        if ($user->role === 'guru') {
            $guru = \App\Models\Guru::where('email', $user->email)->first();
            if ($guru) {
                $guruId = $guru->id;
            }
        }

        return response()->json([
            'user' => [
                'id' => $user->id,
                'username' => $user->username,
                'nama' => $user->nama,
                'role' => $user->role,
                'email' => $user->email,
                'guruId' => $guruId,
                'mustChangePassword' => (bool) $user->must_change_password,
            ]
        ]);
    }

    public function changePassword(Request $request)
    {
        $request->validate([
            'currentPassword' => 'required|string',
            'newPassword' => 'required|string|min:6|confirmed',
        ]);

        $user = $request->user();

        if (!Hash::check($request->currentPassword, $user->password)) {
            return response()->json([
                'message' => 'Password lama tidak sesuai'
            ], 422);
        }

        $user->update([
            'password' => Hash::make($request->newPassword),
            'must_change_password' => false,
        ]);

        return response()->json([
            'message' => 'Password berhasil diubah'
        ]);
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();

        return response()->json([
            'message' => 'Successfully logged out'
        ]);
    }
}
