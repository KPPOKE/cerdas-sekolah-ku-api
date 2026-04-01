<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('tahun_ajarans', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->string('nama');
            $table->date('mulai');
            $table->date('selesai');
            $table->boolean('aktif')->default(false);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('tahun_ajarans');
    }
};
