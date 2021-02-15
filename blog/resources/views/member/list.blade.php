<h1>List Data Member</h1>

<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>EMAIL</th>
        <th>ADDRESS</th>
        <th>ACTION</th>
    </tr>

    @foreach ($members as $member)
        <tr>
            <td>{{ $member['id'] }}</td>
            <td>{{ $member['name'] }}</td>
            <td>{{ $member['email'] }}</td>
            <td>{{ $member['address'] }}</td>
            <td>
                <a href={{ "deleteData?id=". $member['id'] }}>DELETE</a>
                <a href={{ "showEditData?id=". $member['id'] }}>EDIT</a>
            </td>
        </tr>
    @endforeach
</table>