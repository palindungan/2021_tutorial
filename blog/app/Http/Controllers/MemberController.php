<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Member;
use Illuminate\Support\Facades\DB;

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
        $member = Member::find($request->id);
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
        $member = Member::find($request->id);
        return view('member/edit', ['member' => $member]);
    }

    // query builder tutorial -> 
    public function qbGetAllData()
    {
        $members = DB::table('members')->get();
        return view('member_qb/list', ['members' => $members]);
    }
}
