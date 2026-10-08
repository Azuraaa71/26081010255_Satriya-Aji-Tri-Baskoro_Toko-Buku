<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "toko_buku"; // Sesuaikan jika berbeda

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
?>