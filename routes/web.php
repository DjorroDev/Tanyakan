<?php

use App\Http\Controllers\PertanyaanController;
use App\Models\Pertanyaan;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

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
    return Inertia::render('Welcome');
});

Route::get('/home', function () {
    return Inertia::render('Home', [
        'quests' => Pertanyaan::all()->load('user'),
    ]);
})->name('home');

// Route::get('/pertanyaan', [PertanyaanController::class, 'index']);

Route::controller(PertanyaanController::class)->group(function () {
    Route::get('/pertanyaan', 'index');
    Route::get('/pertanyaan/{pertanyaan}', 'show');
});