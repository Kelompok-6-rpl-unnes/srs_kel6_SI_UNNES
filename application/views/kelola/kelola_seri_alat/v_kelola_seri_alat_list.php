<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Seri Alat</h3>
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
                echo button('load_silent("kelola/kelola_seri_alat/form/base","#modal")','Add New Seri Alat','btn btn-success');
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
                <th>Kategori</th>
                <th>Merk</th>
                <th>Seri</th>
                <th>Gambar</th>
                <th>SOP Pengoperasian</th>
                <th>SOP Pemeliharaan</th>
                <th>SOP Pemeriksaan</th>
                <th>SOP Kalibrasi</th>
                <th>SOP Uji Fungsi</th>
                <th>Stok</th>
                <th>Stok Minimal</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($kelola_seri_alat->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->kategori?></td>
            <td align="center"><?=$row->merk?></td>
            <td align="center"><?=$row->seri?></td> 
            <td align="center"><img src="<?php echo base_url().$row->gambar; ?>" class="file-preview-image"></td>
            <td align="center"><?=$row->sop_pengoperasian?></td>
            <td align="center"><?=$row->sop_pemeliharaan?></td>
            <td align="center"><?=$row->sop_pemeriksaan?></td>
            <td align="center"><?=$row->sop_kalibrasi?></td>
            <td align="center"><?=$row->sop_uji_fungsi?></td>
            <td align="center"><?=$row->stok?></td>
            <td align="center"><?=$row->stok_minimal?></td>
            <td align="center"><?=$row->sop_kalibrasi?></td>
            <td align="center"><span class="badge bg-green"><?=$row->status?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '7') {
                echo button('load_silent("kelola/kelola_seri_alat/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
              <?php
            $sesi = from_session('level');
            if ($sesi == '1' || $sesi == '2'|| $sesi == '7') {
             echo button('load_silent("kelola/kelola_seri_alat/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
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