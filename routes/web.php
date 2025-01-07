<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegencyController;
use App\Http\Controllers\DistrictController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/regency/map', [RegencyController::class, 'map'])->name('regency.map');
Route::get('/regency/table', [RegencyController::class, 'table'])->name('regency.table');
Route::get('/district/map', [DistrictController::class, 'map'])->name('district.map');
Route::get('/district/table', [DistrictController::class, 'table'])->name('district.table');
