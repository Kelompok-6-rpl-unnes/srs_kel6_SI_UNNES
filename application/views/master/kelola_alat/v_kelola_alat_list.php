<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Pengelolaan Nama Alat Laboratorium EDLABS</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("master/kelola_alat/form/base","#modal")','Tambah kelola alat','btn btn-success');
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
                <th>Nama Alat</th>
                <th>Nama Satuan</th>
                <th>Kategori</th>
                <th>Stock</th>
                <th>Stock Minimal</th>
                <th>Lokasi</th>
                <th>Pendanaan</th>
                <th>Harga</th>
                <th>Kondisi</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($kelola_alat->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_alat?></td>
            <td align="center"><?=$row->Nama?></td>
            <td align="center"><?=$row->Kategori?></td>
            <td align="center"><?=$row->stok?></td>
            <td align="center"><?=$row->stok_minimal?></td>
            <td align="center"><?=$row->nama_lokasi_penyimpanan?></td>
            <td align="center"><?=$row->sumber_pendanaan?></td>
            <td align="left">Rp. <?=number_format($row->harga)?></td>
            <td align="center"><span class="badge bg-green"><?=$row->kondisi?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("master/kelola_alat/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
             <?php
            $sesi = from_session('level');
            if ($sesi == '1'|| $sesi == '4') {
             echo button('load_silent("master/kelola_alat/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
            } else {
              # code...
            }
             ?>   
              </td>
          </tr>
          <?php endforeach;?>
        </tbody>
        </table>
        <a href="" class="btn btn-warning" style="margin-bottom;
        10px; "title="view/utily/v_dashboard.php"></i>Back</a>
        </div>
       </div>
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