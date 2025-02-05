<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UploadController;
use App\Http\Controllers\MemberController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\DeviceController;
use App\Mail\SampleMail;
use App\Http\Controllers\ProductController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/{name}', function ($name) {
//     return view('welcome', ['name' => $name]);
// });

// Route::get('/user', function () {
//     return view('user');
// });

// Route::get('/hello', function () {
//     return view('hello');
// });

// Route::get('/about', function () {
//     return view('about');
// });

// Route::get('/contact', function () {
//     return view('contact');
// });

// Route::get('/', function () {
//     return view('welcome');
//     // return redirect('/about');
// });

// Route::get("/user/{name}", [User::class, 'index']);

// Route::get("/api", [User::class, 'api']);

// Route::get('/user', [UserController::class, 'viewLoad']);

// Route::get('/user/db', [UserController::class, 'selectDB']);

Route::get('/noaccess', function () {
    return view('noaccess');
});

Route::get('/home', function () {
    return view('home');
})->middleware('protectedPage');

Route::get('/user/login', [UserController::class, 'loginForm']);
Route::post('/user/loginAction', [UserController::class, 'loginAction']);
Route::get('/user/getData', [UserController::class, 'getData']);
Route::get('/user/', [UserController::class, 'show']);
Route::get('/user/showListData', [UserController::class, 'showListData']);
Route::get('/logout', function () {
    if (session()->has('username')) {
        session()->pull('username');
    }
    return redirect('/user/login');
});

Route::get('/profile/{lang}', function ($lang) {
    App::setlocale($lang);
    return view('profile');
});

Route::get('/upload', function () {
    return view('upload');
});
Route::post('/upload/action', [UploadController::class, 'index']);

Route::get('/member/', function () {
    return view('member/add');
});
Route::post('/member/addData', [MemberController::class, 'addData']);
Route::get('/member/deleteData', [MemberController::class, 'deleteData']);
Route::post('/member/updateData', [MemberController::class, 'updateData']);
Route::get('/member/showListData', [MemberController::class, 'showListData']);
Route::get('/member/showEditData', [MemberController::class, 'showEditData']);

Route::get('/member/qbGetAllData', [MemberController::class, 'qbGetAllData']);
Route::get('/member/qbGetData', [MemberController::class, 'qbGetData']);
Route::get('/member/qbGetData2', [MemberController::class, 'qbGetData2']);
Route::get('/member/qbCountData', [MemberController::class, 'qbCountData']);
Route::get('/member/dbOperations', [MemberController::class, 'dbOperations']);

Route::get('/member/operations', [MemberController::class, 'operations']);
Route::get('/member/accessors', [MemberController::class, 'accessors']);
Route::get('/member/addDataMutator', [MemberController::class, 'addDataMutator']);

Route::get('/member/one_to_many', [MemberController::class, 'one_to_many']);

Route::get('/employee/showJoins', [EmployeeController::class, 'showJoins']);
Route::get('/employee/one_to_one', [EmployeeController::class, 'one_to_one']);

Route::get('/employee/fluentStrings', [EmployeeController::class, 'fluentStrings']);

// Route::get('/device/{key}', [DeviceController::class, 'index']); // untuk ID
Route::get('/device/{key:name}', [DeviceController::class, 'index']); // untuk Kolom tertentu

Route::get('/sample_mail', function () {
    return new SampleMail();
});

Route::get('/product', [ProductController::class, 'index']);

// Route::group(['middleware' => 'protectedPage'], function () {
//     Route::get('/home', function () {
//         return view('home');
//     });

//     Route::get('/user/login', [UserController::class, 'loginForm']);
//     Route::post('/user/loginAction', [UserController::class, 'loginAction']);
// });