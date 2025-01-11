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
            width: 130px;
            height: 130px;
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

    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 d-flex justify-content-center">
                    <img src={{asset("img/sulsel.png")}} alt="Sulsel" class="img-fluid d-none d-lg-block"
                        style="border-radius: 30px;">
                </div>
                <div class="col-lg-7 text-center">
                    <h2 class="section-title mt-lg-5 mb-0">Tentang Aplikasi</h2>
                    <p class="p-4 text-left text-center text-lg-left">Lorem ipsum dolor sit amet consectetur adipisicing
                        elit. Cum
                        minima natus
                        labore vitae dolor inventore dicta quis exercitationem, atque voluptatibus! Eligendi modi
                        temporibus ex non eaque numquam odit quasi hic facilis? Adipisci cupiditate quam aperiam, unde
                        modi nemo laudantium animi nam! Excepturi commodi, autem dolore tenetur necessitatibus ipsum
                        dignissimos quisquam itaque reprehenderit doloribus. Corrupti explicabo eos, architecto ipsum
                        esse voluptatibus hic quidem nisi accusamus maiores corporis provident amet molestias quibusdam
                        eum facilis molestiae, adipisci sapiente nostrum aliquid cumque ullam quas! Molestias, quod
                        culpa. Illum dolorum temporibus distinctio officiis, eius molestias tempore et, at rerum iste
                        natus laborum odit alias itaque?</p>
                </div>
            </div>
        </div>
    </section>

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
                ['name' => 'Ahmad Huda Salam', 'role' => 'Fullstack Developer', 'img' => 'huda.jpeg', 'social' =>
                'https://www.linkedin.com/in/ahmadhudasalam'],
                ['name' => 'Fauzan Rizqi Ardiansyah', 'role' => 'Data Engineer', 'img' => 'fauzan.jpeg', 'social' =>
                'https://www.linkedin.com/in/fauzan-rizqi-ardiansyah'],
                ['name' => 'Irfan', 'role' => 'Frontend Developer', 'img' => 'irfan.jpeg', 'social' =>
                'https://www.linkedin.com/in/irfan-z'],
                ['name' => 'Muhammad Firdaus', 'role' => 'UI/UX Designer', 'img' => 'pp.jpeg', 'social' =>
                'https://www.tiktok.com/@useee31_'],
                ] as $member)
                <div class="col-lg-3 col-md-6 mb-4 d-flex justify-content-center">
                    <div class="card">
                        <a href={{$member['social']}} target="_blank" class="text-dark">
                            <img src={{asset("img/$member[img]")}} class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <a href={{$member['social']}} target="_blank" class="text-dark">
                                <h5 class="card-text">{{ $member['name'] }}</h5>
                            </a>
                            <p class="card-text text-center">
                                {{ $member['role'] }}
                            </p>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>

    @include('components.footer')

    <!-- jQuery -->
    <script src={{asset("js/jquery.min.js")}}></script>
    <!-- Bootstrap 4 -->
    <script src={{asset("js/bootstrap.bundle.min.js")}}></script>
</body>

</html>