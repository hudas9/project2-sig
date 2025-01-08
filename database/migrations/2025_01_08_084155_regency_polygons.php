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
        Schema::create('regency_polygons', function (Blueprint $table) {
            $table->id();
            $table->foreignId('regency_id')->constrained('regencies')->onUpdate('cascade')->onDelete('cascade');
            $table->string('type');
            $table->longText('polygon');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('regency_polygons');
    }
};
