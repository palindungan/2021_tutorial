<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FileController extends Controller
{
    //
    public function index()
    {
        return "Hello From Index";
    }

    public function upload(Request $request)
    {
        $result = $request->file('file_upload')->store('uploads/images');
        return ["result" => $result];
    }
}
