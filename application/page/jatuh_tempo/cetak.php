<script>

window.print();
window.onfocus=function() {window.close();}

</script>
<body onload="window.print()">
<table width="100%">
<caption>Laporan Jatuh Tempo</caption>
<thead>
<tr>
<th>No</th>
<th>ID Peminjaman</th>
<th>Nama Peminjam</th>
 <th>Nomor Induk</th>
<th>Status User</th>
<th>Kategori Peminjaman</th>
<th>Tanggal Pinjam</th>
<th>Status Peminjaman</th>
<th>Status</th>
</tr>
</thead>
<tbody>
<?php
$no = 1;
$sql =$koneksi->query("select * from tb_jatuh_tempo");
while ($data = $sql->fetch_assoc())
{
    <tr>
    <td align="center"><?=$i++?></td>
     <td align="center"><?=$row->id_peminjaman?></td>
    <td align="center"><?=$row->nama_peminjam?></td>
     <td align="center"><?=$row->nomor_induk?></td>
     <td align="center"><?=$row->status_user?></td>
     <td align="center"><?=$row->kategori_peminjaman?></td>
    <td align="center"><?=$row->tanggal_pinjam?></td>
    <td align="center"><?=$row->status_peminjaman?></td>
    <td align="center"><?=$row->status?></td>
    </tr>
    </tbody>
    </table>
}