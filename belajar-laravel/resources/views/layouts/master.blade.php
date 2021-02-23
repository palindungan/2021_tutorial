<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Blank Page</title>
{{-- {{ asset('assets/images/favicon.ico') }} --}}
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('assets/adminLTE/plugins/fontawesome-free/css/all.min.css') }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('assets/adminLTE/dist/css/adminlte.min.css') }}">
  
</head>

<body class="hold-transition sidebar-mini">

  <!-- Start Site wrapper -->
  <div class="wrapper">

    <!-- Start Navbar -->
    @include('layouts.partials.navbar')
    <!-- End Navbar -->

    <!-- Main Sidebar Container -->
    @include('layouts.partials.main_sidebar')
    <!-- End Sidebar Container -->

    <!-- Start Content Wrapper. Contains page content -->
    <div class="content-wrapper">

      <!-- Start Content Header (Page header) -->
      @include('layouts.partials.page_header')
      <!-- End Content Header (Page header) -->

      <!-- Start Main content -->
      <section class="content">
        @yield('content')
      </section>
      <!-- End Main content -->

    </div>
    <!-- End Content Wrapper. Contains page content -->

    <!-- Start Footer -->
    @include('layouts.partials.footer')
    <!-- Start Footer -->

    <!-- Start Control Sidebar -->
    @include('layouts.partials.control_sidebar')
    <!-- End control-sidebar -->

  </div>
  <!-- End Site Wrapper -->

  <!-- Start Script -->
  @include('layouts.partials.script')
  <!-- End Script -->

</body>

</html>