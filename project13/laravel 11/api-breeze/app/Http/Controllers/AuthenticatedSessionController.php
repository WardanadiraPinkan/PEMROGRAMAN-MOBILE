<?php 

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;

class AuthenticatedSessionController extends Controller
{
    // Fungsi untuk login dan mendapatkan token
    public function store(Request $request)
    {
        // Validasi input
        $request->validate([
            'email' => ['required', 'string', 'email'],
            'password' => ['required', 'string'],
        ]);

        // Autentikasi pengguna
        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json([
                'message' => 'Invalid login credentials'
            ], 401);
        }

        // Ambil pengguna yang terautentikasi
        $user = Auth::user();

        // Pastikan model User memiliki trait HasApiTokens
        $token = $user->createToken('auth_token')->plainTextToken;

        return response()->json([
            'access_token' => $token,
            'token_type' => 'Bearer',
            'user' => $user,
            'status' => 'Login successful',
        ]);
    }

    // Fungsi untuk logout dan menghapus token
    public function destroy(Request $request)
    {
        // Hapus token akses saat ini
        $request->user()->currentAccessToken()->delete();

        return response()->json([
            'message' => 'Logout successful'
        ]);
    }
}
