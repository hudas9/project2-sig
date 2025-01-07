<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Kabupaten/Kota di Sulawesi Selatan</title>

    <link rel="stylesheet" href={{asset("css/dataTables.bootstrap4.min.css")}}>
    <link rel="stylesheet" href={{asset("css/responsive.bootstrap4.min.css")}}>
    <link rel="stylesheet" href={{asset("css/buttons.bootstrap4.min.css")}}>
    <link rel="stylesheet" href={{asset("css/adminlte.min.css")}}>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
</head>

<body style="font-family: Poppins;">

    <div class="container py-5">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title" style="font-weight: bold">Kabupaten/Kota di Provinsi Sulawesi Selatan</h3>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Nama</th>
                                {{-- <th>Alt Name</th> --}}
                                <th>Latitude</th>
                                <th>Longitude</th>
                                <th>Luas (km²)</th>
                                <th>Populasi</th>
                                <th>Kepadatan</th>
                                <th>Persentase Pengangguran</th>
                                <th>Jumlah SMA</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($regencies as $regency)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $regency->name }}</td>
                                {{-- <td>{{ $regency->alt_name }}</td> --}}
                                <td>{{ $regency->latitude }}</td>
                                <td>{{ $regency->longitude }}</td>
                                <td>{{ $regency->area_km2 }}</td>
                                <td>{{ number_format($regency->population, 0, ',', '.') }}</td>
                                <td>{{ $regency->population_density }}</td>
                                <td>{{ $regency->unemployment_rate }}</td>
                                <td>{{ $regency->high_school_count }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src={{asset("js/jquery.min.js")}}></script>
        <!-- Bootstrap 4 -->
        <script src={{asset("js/bootstrap.bundle.min.js")}}></script>
        <!-- DataTables  & Plugins -->
        <script src={{asset("js/jquery.dataTables.min.js")}}></script>
        <script src={{asset("js/dataTables.bootstrap4.min.js")}}></script>
        <script src={{asset("js/dataTables.responsive.min.js")}}></script>
        <script src={{asset("js/responsive.bootstrap4.min.js")}}></script>
        <script src={{asset("js/dataTables.buttons.min.js")}}></script>
        <script src={{asset("js/buttons.bootstrap4.min.js")}}></script>
        <script src={{asset("js/jszip.min.js")}}></script>
        <script src={{asset("js/pdfmake.min.js")}}></script>
        <script src={{asset("js/vfs_fonts.js")}}></script>
        <script src={{asset("js/buttons.html5.min.js")}}></script>
        <script src={{asset("js/buttons.print.min.js")}}></script>
        <script src={{asset("js/buttons.colVis.min.js")}}></script>

        <script>
            $(function () {
                $("#example1").DataTable({
                    "responsive": false, "lengthChange": false, "autoWidth": false,
                    "buttons": ["copy", "csv", "excel", "pdf", "print"]
                    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            });
        </script>
</body>

</html>