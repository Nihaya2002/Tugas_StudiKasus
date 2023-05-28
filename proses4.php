<?php
$nama=$_POST["nama"];
$harga=$_POST["harga"];
$tanggal_terbit=$_POST["tanggal_terbit"];
$id_kategori=$_POST["id_kategori"];
$id_penerbit=$_POST["id_penerbit"];

include ('koneksi4.php');

$query= mysqli_query ($koneksi,"INSERT INTO `produk` (`nama`,`harga`,`tanggal_terbit`,`id_kategori`,`id_penerbit`) 
VALUES ('$nama','$harga','$tanggal_terbit','$id_kategori','$id_penerbit');");

header("Location:admin4.php")
?>
