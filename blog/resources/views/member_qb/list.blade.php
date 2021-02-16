<h1>Query Builder Get All Data</h1>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
    </tr>
    @foreach ($members as $member)
        <tr>
            <td>{{ $member->id }}</td>
            <td>{{ $member->name }}</td>
            <td>{{ $member->email }}</td>
            <td>{{ $member->address }}</td>
        </tr>
    @endforeach
</table>