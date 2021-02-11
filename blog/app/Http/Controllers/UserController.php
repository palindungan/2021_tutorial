<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    //
    public function viewLoad()
    {
        $data = ['rizkika', 'zakka', 'palindungan'];
        return view('user', ['users' => $data]);
    }
}
