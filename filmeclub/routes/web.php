<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\indexController;
use App\Http\Controllers\videoController;
use App\Http\Controllers\categoryVideoController;
use App\Mail\verifyEmail;
use Illuminate\Support\Facades\Mail;
use App\Models\user;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/', [indexController::class,'index'])->name('index');
Route::get('/videos/create',[videoController::class,'create'])->name('videos.create');
Route::post('/videos',[videoController::class,'store'])->name('videos.store');
Route::get('/videos/{video}',[videoController::class,'show'])->name('videos.show');
Route::get('/videos/{video}/edit',[videoController::class,'edit'])->name('videos.edit');
Route::post('/videos/{video}',[videoController::class,'update'])->name('videos.update');
//get videos of category
Route::get('/categories/{category:slug}/videos',[categoryVideoController::class,'index'])->name('categories.videos.index');

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
Route::get('/email',function(){
    $user=user::first();
    return (new verifyEmail($user))->render();
});
