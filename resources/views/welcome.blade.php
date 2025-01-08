<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Homepage</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href={{asset("css/adminlte.min.css")}}>

    <style>
        .card-img-top {
            width: 120px;
            height: 120px;
            object-fit: cover;
            margin: 15px auto;
            border-radius: 50%;
        }

        .card {
            text-align: center;
            border: none;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
            width: 250px;
            margin: 0 auto;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            height: 100px;
        }

        .section-title {
            font-weight: bold;
            margin-bottom: 30px;
        }
    </style>
</head>

<body style="font-family: Poppins;">

    @include('components.navbar')

    {{-- Tim Pengembang --}}
    <section class="bg-light py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-title">Anggota Kelompok</h2>
                </div>
            </div>
            <div class="row">
                @foreach ([
                ['name' => 'Ahmad Huda Salam', 'desc' => 'sipaling fullstack', 'img' => 'pp.jpeg'],
                ['name' => 'Fauzan Rizqi Ardiansyah', 'desc' => 'dikit-dikti chatgpt', 'img' => 'pp.jpeg'],
                ['name' => 'Irfan', 'desc' => 'push rank sampe subuh', 'img' => 'pp.jpeg'],
                ['name' => 'Muhammad Firdaus', 'desc' => 'sibuk modif motor', 'img' => 'pp.jpeg']
                ] as $member)
                <div class="col-lg-3 col-md-6 mb-4 d-flex justify-content-center">
                    <div class="card">
                        <img src={{asset("img/$member[img]")}} class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-text">{{ $member['name'] }}</h5>
                            <p class="card-text text-center">{{ $member['desc'] }}</p>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>

    <!-- jQuery -->
    <script src={{asset("js/jquery.min.js")}}></script>
    <!-- Bootstrap 4 -->
    <script src={{asset("js/bootstrap.bundle.min.js")}}></script>
</body>

</html>