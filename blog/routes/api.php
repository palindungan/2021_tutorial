<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DummyAPI;
use App\Http\Controllers\DeviceController;
use App\Http\Controllers\CompanyController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get("dummy/get_data", [DummyAPI::class, "getData"]);

Route::get("device/get_data", [DeviceController::class, "getData"]);
Route::post("device/post_data", [DeviceController::class, "postData"]);
Route::put("device/put_data", [DeviceController::class, "putData"]);
Route::delete("device/delete_data", [DeviceController::class, "deleteData"]);
Route::get("device/search_data", [DeviceController::class, "searchData"]);
Route::post("device/data_validation", [DeviceController::class, "dataValidation"]);

Route::apiResource("company", CompanyController::class);
