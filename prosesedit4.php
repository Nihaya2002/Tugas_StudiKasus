<?php

include_once("koneksi4.php");
$id = $_GET["id"];

$nama = $_POST['nama'];
$harga = $_POST['harga'];
$tanggal_terbit = $_POST['tanggal_terbit'];
$id_kategori= $_POST['id_kategori'];
$id_penerbit = $_POST['id_penerbit'];

$result = mysqli_query($koneksi, "UPDATE `produk` SET nama = '$nama', harga = '$harga', tanggal_terbit = '$tanggal_terbit', id_kategori = '$id_kategori', id_penerbit = '$id_penerbit' WHERE id ='$id';");

error_reporting(E_ALL);
ini_set('display_errors', 1);

header("Location:admin4.php");
?>