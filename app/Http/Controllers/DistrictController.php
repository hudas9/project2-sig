<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\District;

class DistrictController extends Controller
{
    public function map()
    {
        $districts = District::all();
        return view('district.map', compact('districts'));
    }

    public function table(Request $request)
    {
        $districts = District::all();
        return view('district.table', compact('districts'));
    }
}
