<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\models\video;

class videoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        video::factory(5)->create();
    }
}
