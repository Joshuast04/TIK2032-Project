<?php
$koneksi = new mysqli("localhost", "root", "", "project_webku");
if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}

$sql = "SELECT * FROM blog";
$result = $koneksi->query($sql);
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Blog</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="gallery.html">Gallery</a></li>
                <li><a href="blog.php" class="active" >Blog</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
        </nav>
    </header>

    <button id="toggle-mode">Toggle Mode</button>


    <h1>Blog</h1>
    <?php while ($row = $result->fetch_assoc()): ?>
        <article>
            <h2><?= $row['judul'] ?></h2>
            <p><?= $row['isi'] ?></p>
            <a href="<?= $row['link'] ?>" target="_blank">Baca selengkapnya</a>
        </article>
    <?php endwhile; ?>
    <script src="script.js"></script>
</body>
</html>
