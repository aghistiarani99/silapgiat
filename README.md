# 📋 LapGiat

<p align="center">
  <img src="https://img.shields.io/badge/Laravel-12-red?style=for-the-badge&logo=laravel" />
  <img src="https://img.shields.io/badge/PHP-8.x-blue?style=for-the-badge&logo=php" />
  <img src="https://img.shields.io/badge/MySQL-Database-orange?style=for-the-badge&logo=mysql" />
  <img src="https://img.shields.io/badge/Bootstrap-5-purple?style=for-the-badge&logo=bootstrap" />
</p>

## 📖 Tentang Project

**LapGiat** merupakan Sistem Informasi Pelaporan Kegiatan berbasis web yang dikembangkan menggunakan **Laravel**. Aplikasi ini dirancang untuk membantu proses pengelolaan data kegiatan, pegawai, lokasi, laporan, serta notifikasi secara lebih efektif, terstruktur, dan terdokumentasi.

Sistem menyediakan hak akses pengguna sesuai peran sehingga proses pengelolaan data menjadi lebih aman dan efisien.

---

# ✨ Fitur Utama

- 🔐 Login & Logout
- 👤 Manajemen Pengguna
- 👥 Manajemen Pegawai
- 📋 Manajemen Kegiatan
- 📍 Manajemen Lokasi
- 📝 Pelaporan Kegiatan
- 🔔 Notifikasi
- 📊 Dashboard
- 📈 Rekap Data
- 🔍 Pencarian Data
- 📱 Responsive Design

---

# 🖼️ Screenshot

## Dashboard

> Tambahkan screenshot pada folder berikut:

```
public/screenshots/dashboard.png
```

```markdown
![Dashboard](public/screenshots/dashboard.png)
```

---

## Login

```markdown
![Login](public/screenshots/login.png)
```

---

## Data Kegiatan

```markdown
![Kegiatan](public/screenshots/kegiatan.png)
```

---

## Data Pegawai

```markdown
![Pegawai](public/screenshots/pegawai.png)
```

---

## Notifikasi

```markdown
![Notifikasi](public/screenshots/notifikasi.png)
```

---

# 🛠️ Teknologi yang Digunakan

| Teknologi | Keterangan |
|-----------|------------|
| Laravel | Framework Backend |
| PHP 8+ | Bahasa Pemrograman |
| MySQL | Database |
| Bootstrap | User Interface |
| HTML5 | Struktur Website |
| CSS3 | Styling |
| JavaScript | Interaksi Halaman |
| Blade Template | Template Engine Laravel |

---

# 📂 Struktur Folder

```
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

# ⚙️ Cara Instalasi

## 1. Clone Repository

```bash
git clone https://github.com/USERNAME/LapGiat.git
```

Masuk ke folder project

```bash
cd LapGiat
```

---

## 2. Install Dependency

```bash
composer install
```

---

## 3. Copy File Environment

```bash
cp .env.example .env
```

Windows

```bash
copy .env.example .env
```

---

## 4. Generate Application Key

```bash
php artisan key:generate
```

---

## 5. Konfigurasi Database

Edit file

```
.env
```

Contoh

```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=lapgiat
DB_USERNAME=root
DB_PASSWORD=
```

---

## 6. Jalankan Migrasi

```bash
php artisan migrate
```

Jika tersedia seeder

```bash
php artisan db:seed
```

atau

```bash
php artisan migrate --seed
```

---

## 7. Jalankan Server

```bash
php artisan serve
```

Akses aplikasi

```
http://127.0.0.1:8000
```

---

# 📁 Hak Akses

Sistem memiliki beberapa hak akses, antara lain:

- Administrator
- Pegawai

Setiap pengguna hanya dapat mengakses menu sesuai dengan hak akses yang dimiliki.

---

# 🚀 Keunggulan Sistem

- Tampilan sederhana dan mudah digunakan
- Pengelolaan data lebih cepat
- Dashboard informatif
- Sistem notifikasi
- Responsive di berbagai perangkat
- Dibangun menggunakan Laravel Framework

---

# 👨‍💻 Developer

**Nama :** Candra M Rizki

GitHub :

```
https://github.com/candra224
```

---

# 📄 License

Project ini dibuat untuk kebutuhan pembelajaran, penelitian, dan pengembangan sistem informasi.

---

## ⭐ Dukungan

Apabila project ini bermanfaat, silakan berikan ⭐ pada repository ini.
