<?php include 'services/config.php'; ?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Toko Buku - Web Sederhana</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="navbar">
        <h1>Toko Buku <span>Minimalis</span></h1>
    </header>
    
    <main class="container">
        <div class="grid-layout">
            <?php
            $sql = "SELECT buku.judul_buku, buku.harga, kategori.nama_kategori, penerbit.nama_penerbit 
                    FROM buku 
                    JOIN kategori ON buku.id_kategori = kategori.id_kategori 
                    JOIN penerbit ON buku.id_penerbit = penerbit.id_penerbit";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo '<div class="card">';
                    echo '<h3>' . htmlspecialchars($row["judul_buku"]) . '</h3>';
                    echo '<p class="category">' . htmlspecialchars($row["nama_kategori"]) . '</p>';
                    echo '<p class="publisher">Penerbit: ' . htmlspecialchars($row["nama_penerbit"]) . '</p>';
                    echo '<p class="price">Rp ' . number_format($row["harga"], 0, ',', '.') . '</p>';
                    echo '</div>';
                }
            } else {
                echo "<p>Tidak ada data buku.</p>";
            }
            $conn->close();
            ?>
        </div>
    </main>
</body>
</html>
