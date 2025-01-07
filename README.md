## Project 2 membuat aplikasi SIG berbasis web

Mata Kuliah Sistem Informasi Geografis di STT Terpadu Nurul Fikri

Anggota Kelompok :

-   Ahmad Huda Salam (0110221238)
-   Fauzan Rizqi Ardiansyah (0110221234)
-   Irfan (0110121138)
-   Muhammad Firdaus (0110221232)

Fitur :

-   Halaman Admin (Mengelola data Kabupaten/kota dan Kecamatan di Provinsi Sulawesi Selatan)
-   Halaman Peta (Peta Lokasi Kabupaten/Kota dan Kecamatan di Provinsi Sulawesi Selatan)
-   Halaman Data (Data Kabupaten/Kota dan Kecamatan di Provinsi Sulawesi Selatan)

### How to use

1. Clone Project

```bash
git clone https://github.com/hudas9/project2-sig.git
```

2. Masuk ke folder project

```bash
cd project2-sig
```

3. Install Dependensi

```bash
composer install
```

4. Setup Environment variabel (rename atau copy file .env.example menjadi .env)
5. Migrasi database

```bash
php artisan migrate
```

6. Membuat user untuk admin panel

```bash
php artisan make:filament-user
```

6. import table regencies & districts yang ada di folder database
7. Jalankan Aplikasi

```bash
php artisan serve
```
