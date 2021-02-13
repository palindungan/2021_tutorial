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
            <td>{{ $item['name'] }}</td>
            <td>{{ $item['email'] }}</td>
            <td>{{ $item['address'] }}</td>
        </tr>
    @endforeach
</table>

@include('inner')

<a href="/">Welcome</a> <br>
<a href="/about">About Us</a> <br>
<a href="/contact">Contact Us</a> <br>
<a href="/hello">Hello</a> <br>
<a href="/user">User</a> <br>

<span>
    {{ $collection->links() }}
</span>

<script>
    // script js disini
</script>

<style>
    .w-5{
        display: none
    }
</style>