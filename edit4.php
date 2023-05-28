<?php
include('koneksi4.php');
$id=$_GET['id'];

$query = mysqli_query($koneksi, "SELECT*FROM produk WHERE id='$id'");

while ($produk = mysqli_fetch_array($query)){
    $nama = $produk['nama'];
    $harga = $produk['harga'];
    $tanggal_terbit = $produk['tanggal_terbit'];
    $id_kategori = $produk['id_kategori'];
    $id_penerbit = $produk['id_penerbit'];
    
}
?>
<form action="prosesedit4.php?id=<?php echo $id ?>" method="post">
<table>
<tr>    <td>Nama</td>
    <td><input type = "text" name= "nama" value="<?php echo $nama; ?> "></td>
</tr>
<tr>
    <td>Harga</td>
    <td><input type = "text" name= "harga" value="<?php echo $harga; ?> "></td>
</tr>
<tr>
    <td>Tanggal_terbit</td>
    <td><input type = "text" name= "tanggal_terbit" value="<?php echo $tanggal_terbit; ?> "></td>
</tr>
<tr>
    <td>id_kategori</td>
    <td><input type = "text" name= "id_kategori" value="<?php echo $id_kategori; ?> "></td>
</tr>
<tr>
    <td>id_penerbit</td>
    <td><input type = "text" name= "id_penerbit" value="<?php echo $id_penerbit; ?> "></td>
<tr>
    <td colspan=2><input type="submit" name ="submit" value="Ubah"></td>
</tr>
</table>
</form>

