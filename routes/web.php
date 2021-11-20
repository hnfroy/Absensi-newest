<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Dashboard3Controller;
use App\Http\Controllers\Dashboard5Controller;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\StudentGroupController;
use App\Http\Controllers\RayonController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\PresensiController;
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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('adminHome', [App\Http\Controllers\HomeController::class, 'index'])->name('adminHome');


Route::resource('presensi', PresensiController::class);
Route::resource('dashboard3', Dashboard3Controller::class);
Route::resource('dashboard5', Dashboard5Controller::class);
Route::resource('students', StudentController::class);
Route::resource('studentGroups', StudentGroupController::class);
Route::resource('rayons', RayonController::class);
Route::resource('admins', AdminController::class);

Route::get('/presensi.masuk', [App\Http\Controllers\PresensiController::class, 'index'])->name('presensi.masuk');
Route::post('/simpan.masuk', [App\Http\Controllers\PresensiController::class, 'store'])->name('simpan.masuk');
Route::get('/presensi.keluar', [App\Http\Controllers\PresensiController::class, 'keluar'])->name('presensi.keluar');
Route::post('ubah.presensi',[PresensiController::class,'presensipulang'])->name('ubah.presensi');

Route::get('/upload', [App\Http\Controllers\UploadController::class, 'upload']);
Route::post('/upload/proses', [App\Http\Controllers\UploadController::class, 'proses_upload']);
