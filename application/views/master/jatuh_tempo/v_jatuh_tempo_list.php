<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="col-lg-12">
        <div class="box box-primary">
            <div class="box-header with-border">
            <h3 class="box-title">Jatuh Tempo</h3>

            <div class="box-tools pull-right">
            <?php
                ?>
            </div>
            </div>
            <div class="box-body">
            
            <table width="100%" id="tableku" class="table table-striped">
                <thead>
                    <th>No</th>
                    <th>ID Peminjaman</th>
                    <th>Nama Peminjam</th>
                    <th>Kode</th>
                    <th>Tanggal Peminjaman</th>
                    <th>Tanggal Pengembalian</th>
                    <th>Status Pengembalian</th>
                    <th>Act</th>
                </thead>
                <tbody>
                <?php $i = 1; foreach($jatuh_tempo->result() as $row): ?>
                <tr>
                    <td align="center"><?= $i++?></td>
                    <td align="center"><?= $row->kode_peminjaman ?></td>
                    <td align="center"><?= $row->nama_peminjaman ?></td>
                    <td align="center"><?= $row->kode ?></td>
                    <td align="center"><?= date($row->tgl_pinjam) ?></td>
                    <td align="center"><?= date($row->tanggal_kembali) ?></td>
                    <td align="center" class="badge <?= $row->status_pengembalian == 'Belum Dikembalikan' ? 'bg-red' : 'bg-green'?>"><?= $row->status_pengembalian ?></td>
                    <td align="center">
                    <?php
                     $sesi = from_session('level');
                     if ($sesi == '1' || $sesi == '6' || $sesi == '7' || $sesi == '8') {
                         echo button('load_silent("peminjaman/buat_peminjaman/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
                     } else {
                         
                     }
                        echo button('load_silent("peminjaman/buat_peminjaman/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
                        echo button('load_silent("peminjaman/buat_peminjaman/view_print/'.'","#content")','  Print','btn btn-warning fa fw fa-print','data-toggle="tooltip" title="Print"');

             ?>   
          </td>
        </tr>
      <?php endforeach;?>
      </tbody>
      </table>
    </div>

  </div>
<div>
</div>
<script type="text/javascript">
$(document).ready(function() {
  var table = $('#tableku').DataTable( {
    "ordering": false,
  } );
});
</script>