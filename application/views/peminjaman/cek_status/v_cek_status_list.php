<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="col-lg-12">
        <div class="box box-primary">
            <div class="box-header with-border">
            <h3 class="box-title">Cek Status</h3>

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
                    <th>Nama Alat</th>
                    <th>Nama Bahan</th>
                    <th>Jumlah</th>
                    <th>Tanggal Peminjaman</th>
                    <th>Tanggal Pengembalian</th>
                    <th>Status</th>
                    <th>Act</th>
                </thead>
                <tbody>
                <?php $i = 1; foreach($peminjaman->result() as $row): ?>
                <tr>
                    <td align="center"><?= $i++?></td>
                    <td align="center"><?= $row->kode_peminjaman ?></td>
                    <td align="center"><?= $row->nama_peminjaman ?></td>
                    <td align="center"><?= $row->kode ?></td>
                    <td align="center"><?= $row->nama_alat ?></td>
                    <td align="center"><?= $row->nama_bahan ?></td>
                    <td align="center"><?= $row->jumlah ?></td>
                    <td align="center"><?= date($row->tgl_pinjam) ?></td>
                    <td align="center"><?= date($row->tanggal_kembali) ?></td>
                    <td align="center"><?= $row->status ?></td>
                    <td align="center">
                    <?php
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