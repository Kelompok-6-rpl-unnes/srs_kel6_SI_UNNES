<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Inventaris Alat dan Bahan Yang Sudah Di Servis</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("master/servis_alat_bahan/form/base","#modal")','Tambah Data Alat Yang Di Servis','btn btn-success');
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
                <th>Kode</th>
                <th>Nama Alat atau Bahan</th>
                <th>Tanggal Servis</th>
                <th>status</th>
<<<<<<< HEAD
                <th>Keterangan</th>
=======
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($servis_alat_bahan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->kode?></td>
            <td align="center"><?=$row->alat_bahan?></td>
            <td align="center"><?=$row->tgl_servis?></td>
<<<<<<< HEAD
            <td align="center"><?=$row->status?></td>
            <td align="center"><?=$row->keterangan?></td>
=======
            <td align="center"><span class="badge bg-green"><?=$row->status?></td>
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("master/servis_alat_bahan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
<<<<<<< HEAD
=======
              <a href="<?= site_url('master/servis_alat_bahan/delete/'.$row->id) ?>" class="btn btn-danger" onclick="return confirm('Anda yakin ingin menghapus servis alat bahan ?')"><i class="fa fa-trash"></i></a>
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001
            </td>
          </tr>

        <?php endforeach;?>
<<<<<<< HEAD
        </tbody>
=======
                </tbody>
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001
            </table>
          </div>
        </div>
      </div>
<<<<<<< HEAD
    </div>
=======
    </div> 
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>