<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php require_once ('application/views/dasbord.php') ?> 
    <div class="col-lg-12">
        <div class="box box-primary">
            <div class="box-header with-border">
            <h3 class="box-title">Pengelolaan Bahan Laboratorium Siladu</h3>

            <div class="box-tools pull-right">
            </div>
            </div>
            <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
                <thead>
                    <th>No</th>
                    <th>Nama Bahan</th>
                    <th>Nama Satuan</th>
                    <th>Kategori</th>
                    <th>Merk</th>
                    <th>Seri</th>
                    <th>Pendanaan</th>
                    <th>Stok</th>
                    <th>Lokasi</th>
                    <th>Kondisi</th>
                    <th>Tipe</th>
                    <th>Status</th>
                    <th></th>
                </thead>
                <tbody>
                <?php 
                $i = 1;
                foreach($kelola_bahan->result() as $row):?>
                    <tr>
                        <td align="center"><?=$i++?></td>
                        <td align="center"><?=$row->nama_bahan?></td>
                        <td align="center"><?=$row->Nama?></td>
                        <td align="center"><?=$row->Kategori?></td>
                        <td align="center"><?=$row->merk?></td>
                        <td align="center"><?=$row->seri?></td>
                        <td align="center"><?=$row->sumber_pendanaan?></td>
                        <td align="center"><?=$row->stok?></td>
                        <td align="center"><?=$row->nama_lokasi_penyimpanan?></td>
                        <td align="center"><?=$row->kondisi?></td>
                        <td align="center"><?=$row->tipe?></td>
                        <td align="center"><?=$row->status?></td>
                        <td align="center">

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