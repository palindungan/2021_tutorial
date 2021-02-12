<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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
        return $request->input();
    }
}
