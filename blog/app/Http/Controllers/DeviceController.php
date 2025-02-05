<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Device;
use Validator;

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

    public function deleteData(Request $request)
    {
        $device = Device::find($request->id);
        $result = $device->delete();

        if ($result) {
            return ["result" => "Data Has Been Deleted"];
        } else {
            return ["result" => "Operation Failed"];
        }
    }

    public function searchData(Request $request)
    {
        // return Device::where("name", $request->name)->get();
        return Device::where("name", "like", "%" . $request->name . "%")->get();
    }

    public function dataValidation(Request $request)
    {
        $rules = array(
            "member_id" => "required|min:1|max:4"
        );
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 401);
        } else {
            return "valid !";
        }
    }
}
