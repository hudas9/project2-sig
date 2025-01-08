<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ThematicController extends Controller
{
    public function density()
    {
        $regencies = DB::table('regencies')
            ->join('regency_polygons', 'regencies.id', '=', 'regency_polygons.regency_id')
            ->select('regencies.id', 'regencies.name', 'regencies.population_density', 'regency_polygons.type', 'regency_polygons.polygon')
            ->get();
        return view('thematic.density', ['regencies' => $regencies]);
    }

    public function highSchoolCount()
    {
        $regencies = DB::table('regencies')
            ->join('regency_polygons', 'regencies.id', '=', 'regency_polygons.regency_id')
            ->select('regencies.id', 'regencies.name', 'regencies.high_school_count', 'regency_polygons.type', 'regency_polygons.polygon')
            ->get();
        return view('thematic.highSchoolCount', ['regencies' => $regencies]);
    }

    public function population()
    {
        $regencies = DB::table('regencies')
            ->join('regency_polygons', 'regencies.id', '=', 'regency_polygons.regency_id')
            ->select('regencies.id', 'regencies.name', 'regencies.population', 'regency_polygons.type', 'regency_polygons.polygon')
            ->get();
        return view('thematic.population', ['regencies' => $regencies]);
    }

    public function unemploymentRate()
    {
        $regencies = DB::table('regencies')
            ->join('regency_polygons', 'regencies.id', '=', 'regency_polygons.regency_id')
            ->select('regencies.id', 'regencies.name', 'regencies.unemployment_rate', 'regency_polygons.type', 'regency_polygons.polygon')
            ->get();
        return view('thematic.unemploymentRate', ['regencies' => $regencies]);
    }
}
