<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Member;

class MemberController extends Controller
{
    public function addData(Request $request)
    {
        $member = new Member;
        $member->name       = $request->name;
        $member->email      = $request->email;
        $member->address    = $request->address;
        $member->save();
        return redirect('member');
    }

    public function listData()
    {
        return view('member/list');
    }
}
