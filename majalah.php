<!DOCTYPE html>
<html>
<head>
    <title>Admin</title>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css" />
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    
    
</head>
<body>
<?php
include "koneksi4.php";
$query = mysqli_query($koneksi,"SELECT nama, harga, tanggal_terbit FROM `produk` WHERE id_kategori= 4");
?>
<div class="container" style="margin-top: 100px;">
<table  id="mytable" class="display" cellpadding="10" cellspacing="0" class="table table-striped">
    <H1> Daftar Majalah</h1>

        <thead>
        <tr>
            
            <th>Nama</th>
            <th>Harga</th>
            <th>Tanggal Terbit</th>
        </tr>
        </thead>
        <?php if(mysqli_num_rows($query)>0) {?>
            <?php
               
                while ($data = mysqli_fetch_array($query)) {
                ?>
                <tr>
                   
                    <td><?php echo $data["nama"];?></td>
                    <td><?php echo $data["harga"]?></td>
                    <td><?php echo $data["tanggal_terbit"]?></td>
                    
                </tr>
                <?php  }?>
        <?php }?>
    </table>
    </body>
</html>
<script type="text/javascript">
    $(document).ready(function(){
        $('#mytable').DataTable();

    });
</script>
