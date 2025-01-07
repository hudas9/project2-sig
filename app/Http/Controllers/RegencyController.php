<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Regency;

class RegencyController extends Controller
{
    public function map()
    {
        $regencies = Regency::all();
        return view('regency.map', compact('regencies'));
    }

    public function table(Request $request)
    {
        $regencies = Regency::all();
        return view('regency.table', compact('regencies'));
    }
}
