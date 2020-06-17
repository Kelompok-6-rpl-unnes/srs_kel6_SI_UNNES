<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Pengajuan Alat</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("pengajuan/pengajuan_alat/form/base","#modal")','Add New pengajuan alat','btn btn-success');
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
                <th>ID</th>
                <th>No Induk</th>
                <th>Nama Alat</th>
                <th>Seri</th>
                <th>Merk</th>
                <th>Satuan Grosir</th>
                <th>Jumlah Grosir</th>
                <th>Harga Grosir</th>
                <th>Estimasi Jumlah</th>
                <th>Harga Dasar</th>
                <th>Nama Lab</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($pengajuan_alat->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->pengajuan_alat?></td>
            <td align="center"><?=$row->no_induk?></td>
            <td align="center"><?=$row->nama_alat?></td>
            <td align="center"><?=$row->seri?></td>
            <td align="center"><?=$row->merk?></td>
            <td align="center"><?=$row->satuan_grosir?></td>
            <td align="center"><?=$row->jumlah_grosir?></td>
            <td align="center"><?=$row->harga_grosir?></td>
            <td align="center"><?=$row->estimasi_jumlah?></td>
            <td align="center"><?=$row->harga_dasar?></td>
            <td align="center"><?=$row->nama_lab?></td>
            <td align="center"><span class="badge bg-green"><?=$row->status?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("pengajuan/pengajuan_alat/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
 
              } else {
                # code...
              }
              ?>
              <a href="<?= site_url('pengajuan/pengajuan_alat/delete/'.$row->id) ?>" class="btn btn-danger" onclick="return confirm('Anda yakin ingin menghapus pengajuan alat ?')"><i class="fa fa-trash"></i></a>

            </td>
          </tr>

        <?php endforeach;?>
                </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>