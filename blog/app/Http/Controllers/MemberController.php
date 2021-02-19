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

    // query builder tutorial -> 
    public function qbGetData()
    {
        return DB::table('members')
            ->where('id', 1)
            ->get();
    }

    public function qbGetData2()
    {
        return (array) DB::table('members')->find(2);
    }

    public function qbCountData()
    {
        return (array) DB::table('members')->count();
    }

    public function dbOperations()
    {
        // INSERT DB
        // return DB::table('members')->insert(
        //     [
        //         'name'      => 'anil',
        //         'email'     => 'anil@test.com',
        //         'address'   => 'majang'
        //     ]
        // );

        // UPDATE DB
        // return DB::table('members')
        //     ->where('id', 4)
        //     ->update(
        //         [
        //             'name'      => 'kika',
        //             'email'     => 'kika@test.com',
        //             'address'   => 'kunir'
        //         ]
        //     );

        // DELETE DB
        // return DB::table('members')
        //     ->where('id', 4)
        //     ->delete();
    }

    public function operations()
    {
        echo DB::table('members')->avg('id');
        echo "<br>";
        echo DB::table('members')->sum('id');
        echo "<br>";
        echo DB::table('members')->count('id');
        echo "<br>";
        echo DB::table('members')->max('id');
        echo "<br>";
        echo DB::table('members')->min('id');
        echo "<br>";
        echo DB::table('members')->min('name');
        echo "<br>";
    }
}
