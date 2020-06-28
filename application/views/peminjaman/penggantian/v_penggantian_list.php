<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Penggantian</h3>
            </div>
            </head>
            <body>
            <table>
            <tr>
            </div>
            </div>
            &emsp;
            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '7') {
                echo button('load_silent("peminjaman/penggantian/form/base","#modal")','Add New Penggantian','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
         </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>ID Peminjaman</th>
                <th>Nama</th>
                <th>Nomor Induk</th>
                <th>Jenis</th>
                <th>Nama Barang</th>
                <th>Merk Barang</th>
                <th>Seri Barang</th>
                <th>Sistem Penggantian</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($penggantian->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id_peminjaman?></td>
            <td align="center"><?=$row->nama?></td>
            <td align="center"><?=$row->nomor_induk?></td> 
            <td align="center"><?=$row->jenis?></td>
            <td align="center"><?=$row->nama_barang?></td>
            <td align="center"><?=$row->merk_barang?></td>
            <td align="center"><?=$row->seri_barang?></td>
            <td align="center"><?=$row->sistem_penggantian?></td>
            <td align="center"><span class="badge bg-green"><?=$row->status?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '7') {
                echo button('load_silent("peminjaman/penggantian/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
              <?php
            $sesi = from_session('level');
            if ($sesi == '1' || $sesi == '2'|| $sesi == '7') {
             echo button('load_silent("peminjaman/penggantian/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
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