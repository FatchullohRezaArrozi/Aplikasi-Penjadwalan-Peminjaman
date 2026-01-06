<?php include "../config/koneksi.php"; ?>
<a href="tambah.php">+ Tambah Peminjaman</a>
<table border="1">
<tr>
 <th>Fasilitas</th><th>Tgl Pinjam</th><th>Status</th>
</tr>
<?php
$q = mysqli_query($conn,"
SELECT p.*, f.nama_fasilitas 
FROM peminjaman p JOIN fasilitas f ON p.fasilitas_id=f.id
");
while($d=mysqli_fetch_assoc($q)){
 echo "<tr>
 <td>$d[nama_fasilitas]</td>
 <td>$d[tanggal_pinjam]</td>
 <td>$d[status]</td>
 </tr>";
}
?>
</table>
