<h1>User Login</h1>

<h2>Username : {{ session('username') }}</h2>

@if (session('flash_username'))
    <h3 style="color: green">{{ session('flash_username') }} Sudah Ditambahkan</h3>
@endif

<form action="/user/loginAction" method="POST">
    {{ method_field('POST') }}
    @csrf
    <input type="text" name="username" id="username" placeholder="Isi Nama Anda">
    <span style="color: red">
        @error('username') {{ $message }} @enderror
    </span> 
    <br> <br>
    <input type="text" name="password" id="password" placeholder="Password">
    <span style="color: red">
        @error('password') {{ $message }} @enderror
    </span>  
    <br> <br>
    <button type="submit">Login</button>
</form>

@include('inner')