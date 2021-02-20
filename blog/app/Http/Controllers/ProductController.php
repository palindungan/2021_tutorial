<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Device;
use App\Models\Product;

class ProductController extends Controller
{
    //
    public function index()
    {
        return Product::all();
        // return DB::connection("mysql_youtube")->table("products")->get();
    }
}
