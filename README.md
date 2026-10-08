# Tugas Web Sederhana: Toko Buku

Proyek ini dibuat untuk memenuhi penugasan pembuatan website sederhana yang terhubung dengan database MySQL menggunakan PHP.

## Struktur Database
Database `toko_buku` terdiri dari 3 tabel:
1. **kategori** (id_kategori, nama_kategori, deskripsi)
2. **penerbit** (id_penerbit, nama_penerbit, kota_penerbit)
3. **buku** (id_buku, judul_buku, harga, id_kategori, id_penerbit)

### Relasi
- Kategori -> Buku (1:N)
- Penerbit -> Buku (1:N)

## Cara Menjalankan
1. Nyalakan Apache dan MySQL (XAMPP).
2. Buka phpMyAdmin, buat database `toko_buku`.
3. Import `database/schema.sql`.
4. Sesuaikan kredensial di `services/config.php` (default: root, tanpa password).
5. Akses melalui `http://localhost/tugas_web_toko_buku/`.
