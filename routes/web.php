<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers;

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
Route::get('/', [Controllers\BaseController::class, 'getIndex']);


Auth::routes();
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::post('/home', [Controllers\HomeController::class, 'postIndex']);
Route::get('catalog/{catalog}', [Controllers\CatalogController::class, 'getIndex']);
Route::get('{ulr}', [Controllers\BaseController::class, 'getStatic']); // всегда последний
