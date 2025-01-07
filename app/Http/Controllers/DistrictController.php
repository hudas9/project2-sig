<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\District;
use Yajra\DataTables\Facades\DataTables;

class DistrictController extends Controller
{
    public function map()
    {
        $districts = District::all();
        return view('district.map', compact('districts'));
    }

    public function table(Request $request)
    {
        // if ($request->ajax()) {
        //     $districts = District::query();

        //     return DataTables::eloquent($districts)->addIndexColumn()->make(true);
        // }
        // return view('district.table');

        $districts = District::all();
        return view('district.table', compact('districts'));
    }
}
