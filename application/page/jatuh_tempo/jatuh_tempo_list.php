<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title"> Jatuh Tempo</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("master/jatuh_tempo/form/base","#modal")','Add New Jatuh Tempo','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>ID Peminjaman</th>
                <th>Nama Peminjam</th>
                <th>Nomor Induk</th>
                <th>Status User</th>
                <th>Kategori Peminjaman</th>
                <th>Tanggal Pinjam</th>
                <th>Status Peminjaman</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($jatuh_tempo->result() as $row): ?>
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
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("master/jatuh_tempo/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
            } else {
                # code...
              }
              ?>
              <a href="<?= site_url('master/jatuh_tempo/delete/'.$row->id) ?>" class="btn btn-danger" onclick="return confirm('Anda yakin ingin menghapus jatuh tempo?')"><i class="fa fa-trash"></i></a>

            </td>
          </tr>
        <?php endforeach;?>
        </tbody>
        </table>
        <b>
          <a href="" class="btn btn-warning" style="margin-bottom;
        10px; "title="view/utily/v_dashboard.php"></i>Back</a>
          <a href ="application/page/jatuh_tempo/cetak.php" class="btn btn-primary" style="margin-bottom;
        10px; "title=""><i class="fa fa-print"></i>Cetak</a>
      </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>