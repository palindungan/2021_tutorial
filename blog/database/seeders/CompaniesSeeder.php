<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class CompaniesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        for ($i = 0; $i < 2; $i++) {
            DB::table('companies')->insert([
                'name' => Str::random(10),
                'employee_id' => 2,
            ]);
        }
    }
}
