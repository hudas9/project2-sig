<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MapController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/map/regencies', [MapController::class, 'showRegencies']);
Route::get('/map/districts', [MapController::class, 'showDistricts']);
