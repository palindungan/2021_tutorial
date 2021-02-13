<x-header data="User Component Header" />

<h1>User Page</h1>

<table border="1">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Email</td>
        <td>Avatar</td>
    </tr>

    @foreach ($collection as $item)
        <tr>
            <td>{{ $item['id'] }}</td>
            <td>{{ $item['first_name'] }} {{ $item['last_name'] }}</td>
            <td>{{ $item['email'] }}</td>
            <td><img src="{{ $item['avatar'] }}" alt=""></td>
        </tr>
    @endforeach
</table>

@include('inner')

<a href="/">Welcome</a> <br>
<a href="/about">About Us</a> <br>
<a href="/contact">Contact Us</a> <br>
<a href="/hello">Hello</a> <br>
<a href="/user">User</a> <br>

<script>
    // script js disini
</script>