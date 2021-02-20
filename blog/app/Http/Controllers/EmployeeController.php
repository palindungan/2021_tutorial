<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Employee;
use App\Models\Company;
use Illuminate\Support\Str;

class EmployeeController extends Controller
{
    public function showJoins()
    {
        return DB::table("employees")
            ->join("companies", "employees.id", "=", "companies.employee_id")
            ->select("employees.*", "companies.id AS company_id", "companies.name AS company_name")
            // ->where("companies.id", 6)
            ->get();
    }

    public function one_to_one()
    {
        return $employee = Employee::find(1)->getCompany;
    }

    public function fluentStrings()
    {
        $data = "code will be here";

        // Manual 
        // $data = Str::ucfirst($data);
        // $data = Str::replaceFirst("Code", "This Result", $data);
        // $data = Str::camel($data);

        // Fluent String
        $data = Str::of($data)
            ->ucfirst($data)
            ->replaceFirst("Code", "This Result", $data)
            ->camel($data);

        return $data;
    }
}
