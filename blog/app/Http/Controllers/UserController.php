<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; // menggunakan fitur Data base menegement
use App\Models\User; // menanggil model
use Illuminate\Support\Facades\Http; // menggunakan Http Client

class UserController extends Controller
{
    //
    public function index()
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

        return DB::select('select * from user');
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
}
