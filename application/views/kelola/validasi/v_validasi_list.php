<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="row" id="form_pembelian">
  <div class="col-lg-12">
    <div class="box box-primary">
      <div class="box-header with-border">
        <h3 class="box-title">Kelola Validasi Absen Mahasiswa</h3>
       
        <div class="box-tools pull-right">
      </div>
     </div>
      <div class="box-body">
        <table width="100%" id="tableku" class="table table-striped">
          <thead>
          <th>ID</th>
                <th>Nomor Induk</th>
                <th>Nama</th>
                <th>Tanggal</th>
                <th>Prodi</th>
                <th>Mata Kuliah</th>
                <th>Rombel</th>
                <th>Keterangan</th>
                <th>Status</th>
                <th>Act</th>
          </thead>
          <tbody>
          <?php 
      $i = 1;
      foreach($validasi->result() as $row): ?>
      <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nomor_induk_mahasiswa?></td>
            <td align="center"><?=$row->nama_lengkap?></td>
            <td align="center"><?=$row->tanggal?></td> 
            <td align="center"><?=$row->prodi?></td>
            <td align="center"><?=$row->mata_kuliah?></td>
            <td align="center"><?=$row->rombel?></td>
            <td align="center"><?=$row->keterangan?></td>
            <td align="center"><?=$row->status?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '8') {
                echo button('load_silent("kelola/validasi/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
 
              } else {
                # code...
              }
              ?>
            </td>
          </tr>
        <?php endforeach;?>
        </tbody>
        </table>
        <b>
    <a href="" class="btn btn-warning" style="margin-bottom;
    10px; "title="view/utily/v_dashboard.php"></i>Back</a>
    </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>