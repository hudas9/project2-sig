<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Regency;
use App\Models\District;


class MapController extends Controller
{
    public function showRegencies()
    {
        $regencies = Regency::all();
        return view('map.regency', compact('regencies'));
    }

    public function showDistricts()
    {
        $districts = District::all();
        return view('map.district', compact('districts'));
    }
}
