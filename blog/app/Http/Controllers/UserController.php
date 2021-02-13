<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Symfony\Contracts\Service\Attribute\Required;
use App\Models\User;

class UserController extends Controller
{
    //
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
        return view('login');
    }

    public function loginAction(Request $request)
    {
        $request->validate([
            'username' => 'required | max :10',
            'password' => 'required | min :4'
        ]);
        return $request->input();
    }

    public function getData()
    {
        return User::all();
    }
}
