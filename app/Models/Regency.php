<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Regency extends Model
{
    protected $fillable = [
        'name',
        'alt_name',
        'latitude',
        'longitude',
        'population',
        'area_km2',
        'population_density',
        'avg_rainfall',
        'unemployment_rate'
    ];

    public function districts()
    {
        return $this->hasMany(District::class);
    }

    public function regencyPolygon()
    {
        return $this->hasOne(RegencyPolygon::class);
    }
}
