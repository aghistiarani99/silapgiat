<div align="center">

# LapGiat

Sistem Informasi Pelaporan Kegiatan Berbasis Laravel

<img src="https://skillicons.dev/icons?i=laravel,php,mysql,bootstrap,html,css,js,git,github,vscode" />

<br>

![Laravel](https://img.shields.io/badge/Laravel-12-FF2D20?logo=laravel&logoColor=white)
![PHP](https://img.shields.io/badge/PHP-8.x-777BB4?logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?logo=mysql&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-5-7952B3?logo=bootstrap&logoColor=white)
![Version](https://img.shields.io/badge/Version-1.0-success)
![License](https://img.shields.io/badge/License-MIT-green)

</div>

---

## Overview

Silapgiat merupakan aplikasi berbasis web responsif yang dikembangkan menggunakan **Laravel** untuk membantu proses pelaporan kegiatan secara digital. Sistem ini dirancang agar proses pencatatan, pengelolaan data, dan monitoring kegiatan dapat dilakukan secara lebih cepat, efisien, dan terpusat.

Aplikasi menyediakan fitur manajemen pengguna, pegawai, lokasi, laporan kegiatan, rekap data, notifikasi, serta dashboard monitoring yang mudah digunakan.

---

## Features

- Authentication (Login & Logout)
- Dashboard Monitoring
- User Management
- Employee Management
- Activity Management
- Location Management
- Activity Reports
- Notification System
- Search & Filter Data
- Responsive Interface

---

## Preview

> Simpan screenshot pada folder **screenshots/**

<div align="center">

| Login | Dashboard |
|:------:|:---------:|
| <img src="screenshots/login.png" width="100%"> | <img src="screenshots/dashboard.png" width="100%"> |

| Data Kegiatan | Data Pegawai |
|:-------------:|:------------:|
| <img src="screenshots/kegiatan.png" width="100%"> | <img src="screenshots/pegawai.png" width="100%"> |

| Laporan | Notifikasi |
|:--------:|:----------:|
| <img src="screenshots/laporan.png" width="100%"> | <img src="screenshots/notifikasi.png" width="100%"> |

</div>

---

## Tech Stack

| Technology | Description |
|------------|-------------|
| Laravel 12 | Backend Framework |
| PHP 8+ | Programming Language |
| MySQL | Database Management |
| Bootstrap 5 | Frontend Framework |
| Blade | Template Engine |
| JavaScript | Client Side Programming |
| HTML5 & CSS3 | User Interface |

---

## Project Structure

```text
LapGiat
│
├── app/
├── bootstrap/
├── config/
├── database/
├── public/
├── resources/
├── routes/
├── storage/
├── tests/
├── artisan
├── composer.json
└── README.md
```

---

## Installation

### Clone Repository

```bash
git clone https://github.com/aghistiarani99/silapgiat.git
```

Masuk ke folder project

```bash
cd silapgiat
```

### Install Dependency

```bash
composer install
```

### Copy Environment File

Linux / macOS

```bash
cp .env.example .env
```

Windows

```bash
copy .env.example .env
```

### Generate Application Key

```bash
php artisan key:generate
```

### Configure Database

Edit file `.env`

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=lapgiat
DB_USERNAME=root
DB_PASSWORD=
```

### Run Migration

```bash
php artisan migrate
```

atau

```bash
php artisan migrate --seed
```

### Start Development Server

```bash
php artisan serve
```

Buka browser

```
http://127.0.0.1:8000
```

---

## User Roles

| Role | Access |
|------|--------|
| Administrator | Mengelola seluruh data sistem |
| Pegawai | Mengelola laporan kegiatan sesuai hak akses |

---

## Screenshots Directory

```text
screenshots/
├── login.png
├── dashboard.png
├── kegiatan.png
├── pegawai.png
├── laporan.png
└── notifikasi.png
```

---

## Roadmap

- Dashboard Monitoring
- Authentication
- Activity Management
- Employee Management
- Notification System
- Report Export
- Responsive UI

---

## Developer

**Aghstykhrani**

GitHub

<a href="https://github.com/aghistiarani99">
<img src="https://img.shields.io/badge/GitHub-aghistiarani99-181717?style=for-the-badge&logo=github">
</a>

---

## License

This project is intended for educational, research, and learning purposes.

---

<div align="center">

Made with ❤️ using Laravel

</div>
