<x-header data="User Component Header" />

<h1>User Page</h1>

@foreach ($users as $item)
<h3>{{$item}}</h3>
@endforeach

<a href="/">Welcome</a> <br>
<a href="/about">About Us</a> <br>
<a href="/contact">Contact Us</a> <br>
<a href="/hello">Hello</a> <br>
<a href="/user">User</a> <br>