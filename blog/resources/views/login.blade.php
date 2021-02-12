<h1>User Login</h1>
<form action="/user/loginAction" method="POST">
    @csrf
    <input type="text" name="username" id="username" placeholder="Isi Nama Anda"> <br> <br>
    <input type="text" name="password" id="password" placeholder="Password"> <br> <br>
    <button type="submit">Login</button>
</form>