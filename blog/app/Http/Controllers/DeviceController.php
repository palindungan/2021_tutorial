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

    public function postData(Request $request)
    {
        $device = new Device;
        $device->name       = $request->name;
        $device->member_id  = $request->member_id;
        $result = $device->save();

        if ($result) {
            return ["result" => "Data Has Been Saved"];
        } else {
            return ["result" => "Operation Failed"];
        }
    }

    public function putData(Request $request)
    {
        $device = Device::find($request->id);
        $device->name       = $request->name;
        $device->member_id  = $request->member_id;
        $result = $device->save();

        if ($result) {
            return ["result" => "Data Has Been Updated"];
        } else {
            return ["result" => "Operation Failed"];
        }
    }
}
