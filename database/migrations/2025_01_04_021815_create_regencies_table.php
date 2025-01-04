<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('regencies', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable(false);
            $table->string('alt_name')->default('')->nullable(false);
            $table->double('latitude')->default(0)->nullable(false);
            $table->double('longitude')->default(0)->nullable(false);
            $table->bigInteger('population')->default(0);
            $table->double('area_km2', 15, 8)->default(0);
            $table->double('population_density', 15, 8)->default(0);
            $table->double('high_school_count', 15, 8)->default(0);
            $table->double('unemployment_rate', 5, 2)->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('regencies');
    }
};
