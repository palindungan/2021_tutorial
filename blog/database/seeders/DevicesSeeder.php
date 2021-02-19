<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class DevicesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        for ($i = 0; $i < 4; $i++) {
            DB::table('devices')->insert([
                'name' => Str::random(10),
                'member_id' => 1,
            ]);
        }
    }
}
