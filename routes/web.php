<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegencyController;
use App\Http\Controllers\DistrictController;
use App\Http\Controllers\ThematicController;

Route::get('/', function () {
    return view('welcome');
})->name('home');

Route::get('/thematic', function () {
    return view('thematic');
})->name('thematic');

Route::get('/regency/map', [RegencyController::class, 'map'])->name('regency.map');
Route::get('/regency/table', [RegencyController::class, 'table'])->name('regency.table');
Route::get('/district/map', [DistrictController::class, 'map'])->name('district.map');
Route::get('/district/table', [DistrictController::class, 'table'])->name('district.table');
Route::get('/thematic/density', [ThematicController::class, 'density'])->name('thematic.density');
Route::get('/thematic/high-school-count', [ThematicController::class, 'highSchoolCount'])->name('thematic.highSchoolCount');
Route::get('/thematic/population', [ThematicController::class, 'population'])->name('thematic.population');
Route::get('/thematic/unemployment-rate', [ThematicController::class, 'unemploymentRate'])->name('thematic.unemploymentRate');
