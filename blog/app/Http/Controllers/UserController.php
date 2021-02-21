<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; // menggunakan fitur Data base menegement
use App\Models\User; // menanggil model
use Illuminate\Support\Facades\Http; // menggunakan Http Client
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    public function show()
    {
        $collection =  Http::get('https://reqres.in/api/users?page=1');
        return view('user', ['collection' => $collection['data']]);
    }

    public function viewLoad()
    {
        $data = ['rizkika', 'zakka', 'palindungan'];
        return view('user', ['users' => $data]);
    }

    public function selectDB()
    {

        return DB::select('select * from users');
    }

    public function loginForm()
    {
        // if (session()->has('username')) {
        //     return redirect('/profile');
        // } else {
        //     return view('login');
        // }

        return view('login');
    }

    public function loginAction(Request $request)
    {
        $request->validate([
            'username' => 'required | max :10',
            'password' => 'required | min :4'
        ]);
        $data = $request->input();

        $username = $request->input('username');

        $request->session()->put('username', $data['username']);
        $request->session()->put('password', $data['password']);

        $request->session()->flash('flash_username', $username);

        return redirect('/user/login');

        // return redirect('/profile');
    }

    public function getData()
    {
        return User::all();
    }

    public function showListData()
    {
        $data = User::paginate(2);
        return view('list', ['collection' => $data]);
    }

    function index(Request $request)
    {
        $user = User::where('email', $request->email)->first(); // cek apakah ada email
        // print_r($data);
        if (!$user || !Hash::check($request->password, $user->password)) {
            return response([
                'message' => ['These credentials do not match our records.']
            ], 404);
        }

        $token = $user->createToken('my-app-token')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token
        ];

        return response($response, 201);
    }
}
