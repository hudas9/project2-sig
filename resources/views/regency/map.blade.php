<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Kabupaten/Kota di Sulawesi Selatan</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />

    <link rel="stylesheet" href={{asset("css/adminlte.min.css")}}>

    <style>
        html,
        body {
            height: 100%;
            margin: 0;
            display: flex;
            flex-direction: column;
        }

        #map {
            flex: 1;
        }
    </style>
</head>

<body style="font-family: Poppins;">

    @include('components.navbar')

    <h3 class="text-center mt-3 mb-3">Kabupaten/Kota di Sulawesi Selatan</h3>

    <div id="map"></div>

    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

    <!-- jQuery -->
    <script src={{asset("js/jquery.min.js")}}></script>
    <!-- Bootstrap 4 -->
    <script src={{asset("js/bootstrap.bundle.min.js")}}></script>

    <script>
        var map = L.map('map').setView([-4.608, 120.697], 7.4);

        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
        }).addTo(map);

        var regencies = @json($regencies);

        regencies.forEach(function(regency){
            L.marker([regency.latitude, regency.longitude]).addTo(map).bindPopup(regency.name);
        });

    </script>
</body>

</html>