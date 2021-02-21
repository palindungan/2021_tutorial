<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DummyAPI extends Controller
{
    //
    public function index()
    {
        return "Hello From Index";
    }
    public function getData()
    {
        return ["name" => "Rizkika"];
    }
}
