<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Peminjaman Alat</h3>
            <div class="box-tools pull-right">
    
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>ID Peminjaman</th>
                <th>Nama Peminjam</th>
                <th>Nomor Induk</th>
                <th>Kode Alat</th>
                <th>Nama Alat</th>
                <th>Kategori Peminjaman</th>
                <th>Jumlah</th>
                <th>Tanggal Peminjaman</th>
                <th>Tanggal Harus Dikembalikan</th>
                <th>Keperluan</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($pinjam_alat_bahan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id_peminjaman?></td>
            <td align="center"><?=$row->nama_peminjam?></td>
            <td align="center"><?=$row->nomor_induk?></td>
            <td align="center"><?=$row->kode?></td>
            <td align="center"><?=$row->nama_alat?></td>
            <td align="center"><?=$row->kategori_pinjam?></td>
            <td align="center"><?=$row->jumlah?></td>
            <td align="center"><?=$row->tanggal?></td>
            <td align="center"><?=$row->tgl_kembali?></td>
            <td align="center"><?=$row->keperluan?></td>
            <td align="center">
    
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
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>