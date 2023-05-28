<?php
include_once("koneksi4.php");

$id = $_GET["id"];

$result = mysqli_query($koneksi, "DELETE FROM produk WHERE id='$id';");

error_reporting(E_ALL);
ini_set('display_errors', 1);

header("Location:admin4.php");
?>