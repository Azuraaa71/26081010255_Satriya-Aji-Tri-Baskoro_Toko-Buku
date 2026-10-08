CREATE DATABASE IF NOT EXISTS toko_buku;
USE toko_buku;

CREATE TABLE kategori (
    id_kategori INT AUTO_INCREMENT PRIMARY KEY,
    nama_kategori VARCHAR(100) NOT NULL,
    deskripsi TEXT
);

CREATE TABLE penerbit (
    id_penerbit INT AUTO_INCREMENT PRIMARY KEY,
    nama_penerbit VARCHAR(100) NOT NULL,
    kota_penerbit VARCHAR(100)
);

CREATE TABLE buku (
    id_buku INT AUTO_INCREMENT PRIMARY KEY,
    judul_buku VARCHAR(255) NOT NULL,
    harga INT NOT NULL,
    id_kategori INT,
    id_penerbit INT,
    FOREIGN KEY (id_kategori) REFERENCES kategori(id_kategori),
    FOREIGN KEY (id_penerbit) REFERENCES penerbit(id_penerbit)
);

INSERT INTO kategori (nama_kategori, deskripsi) VALUES
('Fiksi', 'Buku karangan fiktif'),
('Teknologi', 'Buku seputar IT dan Komputer'),
('Bisnis', 'Buku seputar manajemen dan bisnis'),
('Sejarah', 'Buku dokumentasi sejarah'),
('Sains', 'Buku ilmu pengetahuan alam');

INSERT INTO penerbit (nama_penerbit, kota_penerbit) VALUES
('Penerbit A', 'Jakarta'),
('Penerbit B', 'Bandung'),
('Penerbit C', 'Yogyakarta'),
('Penerbit D', 'Surabaya'),
('Penerbit E', 'Malang');

INSERT INTO buku (judul_buku, harga, id_kategori, id_penerbit) VALUES
('Belajar PHP Dasar', 75000, 2, 1),
('Membangun Startup', 90000, 3, 2),
('Sejarah Kemerdekaan', 65000, 4, 3),
('Fisika Kuantum', 120000, 5, 4),
('Novel Petualangan', 55000, 1, 5);