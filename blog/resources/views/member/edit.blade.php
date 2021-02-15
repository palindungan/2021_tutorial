<h1>Edit Member Data</h1>
<form action="/member/updateData/" method="POST">
    @csrf
    <input type="hidden" name="id" value="{{ $member['id'] }}">
    <input type="text" name="name" placeholder="Enter Name" value="{{ $member['name'] }}"> <br><br>
    <input type="text" name="email" placeholder="Enter Email" value="{{ $member['email'] }}"> <br><br>
    <input type="text" name="address" placeholder="Enter Address" value="{{ $member['address'] }}"> <br><br>
    <button type="submit">Update Member</button>
</form>