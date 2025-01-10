<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RegencyPolygon extends Model
{
    public function regency()
    {
        return $this->belongsTo(Regency::class);
    }
}
