<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Device;

class DeviceController extends Controller
{
    // model binding test
    public function index(Device $key)
    {
        return $key;
    }

    public function getData()
    {
        return Device::all();
    }
}
