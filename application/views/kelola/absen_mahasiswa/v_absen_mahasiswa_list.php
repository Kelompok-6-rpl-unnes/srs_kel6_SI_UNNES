<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Absen Mahasiswa</h3>
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
                echo button('load_silent("kelola/absen_mahasiswa/form/base","#modal")','Add New Absen Mahasiswa','btn btn-success');
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
                <th>ID</th>
                <th>Nomor Induk Mahasiswa</th>
                <th>Nama Lengkap</th>
                <th>Tanggal</th>
                <th>Keterangan</th>
                <th>Jumlah Kehadiran</th>
                <th>Prodi</th>
                <th>Mata Kuliah</th>
                <th>Rombel</th>
                <th>Act</th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($absen_mahasiswa->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nomor_induk_mahasiswa?></td>
            <td align="center"><?=$row->nama_lengkap?></td>
            <td align="center"><?=$row->tanggal?></td> 
            <td align="center"><?=$row->keterangan?></td>
            <td align="center"><?=$row->jumlah_kehadiran?></td>
            <td align="center"><?=$row->prodi?></td>
            <td align="center"><?=$row->mata_kuliah?></td>
            <td align="center"><?=$row->rombel?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '7') {
                echo button('load_silent("kelola/absen_mahasiswa/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
              <?php
            $sesi = from_session('level');
            if ($sesi == '1' || $sesi == '2'|| $sesi == '7') {
             echo button('load_silent("kelola/absen_mahasiswa/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
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