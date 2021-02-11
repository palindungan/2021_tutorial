<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class User extends Controller
{
    // index
    public function index($name)
    {
        // echo $name . " from controller";
        return view('user', [
            'name' => $name
        ]);
    }

    public function api()
    {
        return [
            'name' => 'budi',
            'age' => 27
        ];
    }
}
