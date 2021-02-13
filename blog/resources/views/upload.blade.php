<h1>Upload Page</h1>

<form action="upload/action" enctype="multipart/form-data" method="POST">
    @csrf
    <input type="file" name="file_upload">
    <br><br>
    <button type="submit">Upload File</button>
</form>