<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="{{ route('home') }}" style="font-weight: bold">Sistem Informasi Geografis
            SulSel</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="kabupatenDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Kabupaten/Kota
                    </a>
                    <div class="dropdown-menu" aria-labelledby="kabupatenDropdown">
                        <a class="dropdown-item" href="{{ route('regency.map') }}">Peta Tematik</a>
                        <a class="dropdown-item" href="{{ route('regency.table') }}">Data</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="kecamatanDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Kecamatan
                    </a>
                    <div class="dropdown-menu" aria-labelledby="kecamatanDropdown">
                        <a class="dropdown-item" href="{{ route('district.map') }}">Peta Tematik</a>
                        <a class="dropdown-item" href="{{ route('district.table') }}">Data</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>