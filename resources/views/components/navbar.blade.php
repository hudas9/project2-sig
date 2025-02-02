<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
    <div class="container">
        <a class="navbar-brand" href="{{ route('home') }}" style="font-weight: bold">
            <img src="{{ asset('img/sulsel.svg') }}" alt="SulSel" style="height: 35px; margin: auto 5px 0;">
            SIG SulSel
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="kabupatenDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Peta tematik
                    </a>
                    <div class="dropdown-menu" aria-labelledby="kabupatenDropdown" style="z-index: 1050;">
                        <a class="dropdown-item" href={{ route('thematic.density') }}>Kepadatan Penduduk</a>
                        <a class="dropdown-item" href={{ route('thematic.highSchoolCount') }}>Jumlah SMA</a>
                        <a class="dropdown-item" href={{ route('thematic.population') }}>Populasi</a>
                        <a class="dropdown-item" href={{ route('thematic.unemploymentRate') }}>Persentase
                            Pengangguran</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="kabupatenDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Kabupaten/Kota
                    </a>
                    <div class="dropdown-menu" aria-labelledby="kabupatenDropdown" style="z-index: 1050;">
                        <a class="dropdown-item" href="{{ route('regency.map') }}">Peta</a>
                        <a class="dropdown-item" href="{{ route('regency.table') }}">Data</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="kecamatanDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Kecamatan
                    </a>
                    <div class="dropdown-menu" aria-labelledby="kecamatanDropdown" style="z-index: 1050;">
                        <a class="dropdown-item" href="{{ route('district.map') }}">Peta</a>
                        <a class="dropdown-item" href="{{ route('district.table') }}">Data</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('/admin') }}">Admin</a>
                </li>
            </ul>
        </div>
    </div>
</nav>