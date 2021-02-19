<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;
    public $timestamps = false;
    // public $table = 'member'; // jika tidak bisa mengikuti format DB table plural

    public function getNameAttribute($value)
    {
        return ucfirst($value);
    }

    public function getAddressAttribute($value)
    {
        return $value . " Indonesia";
    }

    public function setNameAttribute($value)
    {
        $this->attributes["name"] = "Mr " . $value;
    }

    public function setAddressAttribute($value)
    {
        $this->attributes["address"] = $value . ". Indonesia";
    }
}
