<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UploadController extends Controller
{
    public function index(Request $request)
    {
        return $request->file('file_upload')->store('uploads/images');
    }
}
