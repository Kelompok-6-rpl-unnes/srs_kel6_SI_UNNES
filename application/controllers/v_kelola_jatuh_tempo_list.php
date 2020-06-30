<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Jatuh Tempo</h3>

            <div class="box-tools pull-right">
            
              
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Id Peminjaman</th>
                <th>Nama Peminjam</th>
                <th>Tanggal Pinjamn</th>
                <th>tanggal Kembali</th>
                <th>Status Pengembalian</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($jatuh_tempo->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->kode_peminjaman?></td>
            <td align="center"><?=$row->peminjam?></td>
            <td align="center"><?=$row->tgl_pinjam?></td>
            <td align="center"><?=$row->tgl_pengembalian	?></td>
            <td align="center" class="badge <?= $row->status_pengembalian == 'Belum Dikembalikan' ? 'bg-red' : 'bg-green'?>"><?= $row->status_pengembalian ?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4'|| $sesi == '6') {
                echo button('load_silent("kelola/kelola_jatuh_tempo/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              echo button('load_silent("kelola/kelola_jatuh_tempo/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
              ?>
              
              </a>
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
