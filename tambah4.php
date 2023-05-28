<!DOCTYPE html>
<html>
<title>Tambah Data</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<form action="proses4.php" method="post" name="action">
<!-- <form class="w3-container w3-card-4 w3-light-grey "> -->
<div class="card" style="width: 300px; height: 200px; style="margin: 20px;>
  

  <h2>Tambah Data Buku</h2>

  <p><label>Nama</label>
  <input class="w3-input w3-border" name="nama" type="text"></p>

  <p><label>Harga</label>
  <input class="w3-input w3-border" name="harga" type="number"></p>

  <p><label>Tanggal Terbit</label>
  <input class="w3-input w3-border" name="tanggal_terbit" type="date"></p>

  <p><label>Id Kategori</label>
  <input class="w3-input w3-border" name="id_kategori" type="number"></p>

  <p><label>Id Penerbit</label>
  <input class="w3-input w3-border" name="id_penerbit" type="number"></p>

  <input type="submit" name="submit" value ="Submit" id="submit">
</form>
</body>
</html> 