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
        $members = Member::all();
        return view('member/list', ['members' => $members]);
    }

    public function deleteData(Request $request)
    {
        $data = $request->input();
        $id = $data['id'];

        $member = Member::find($id);
        $member->delete();
        return redirect('member/listData');
    }
}
