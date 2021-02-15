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

    public function deleteData(Request $request)
    {
        $data = $request->input();
        $id = $data['id'];

        $member = Member::find($id);
        $member->delete();
        return redirect('member/showListData');
    }

    public function updateData(Request $request)
    {
        $member = Member::find($request->id);
        $member->name       = $request->name;
        $member->email      = $request->email;
        $member->address    = $request->address;
        $member->save();
        return redirect('member/showListData');
    }

    public function showListData()
    {
        $members = Member::all();
        return view('member/list', ['members' => $members]);
    }

    public function showEditData(Request $request)
    {
        $data = $request->input();
        $id = $data['id'];
        $member = Member::find($id);

        return view('member/edit', ['member' => $member]);
    }
}
