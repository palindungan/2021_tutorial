<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UploadController;

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

Route::get('/user/', [UserController::class, 'index']);

Route::get('/profile/{lang}', function ($lang) {
    App::setlocale($lang);
    return view('profile');
});

Route::get('/logout', function () {
    if (session()->has('username')) {
        session()->pull('username');
    }
    return redirect('/user/login');
});

// Route::group(['middleware' => 'protectedPage'], function () {
//     Route::get('/home', function () {
//         return view('home');
//     });

//     Route::get('/user/login', [UserController::class, 'loginForm']);

//     Route::post('/user/loginAction', [UserController::class, 'loginAction']);
// });

Route::get('/upload', function () {
    return view('upload');
});

Route::post('/upload/action', [UploadController::class, 'index']);

Route::get('/user/showListData', [UserController::class, 'showListData']);
