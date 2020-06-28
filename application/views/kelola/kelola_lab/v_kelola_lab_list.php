<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Laboratorium</h3>
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
              if ($sesi == '1' || $sesi == '3') {
                echo button('load_silent("kelola/kelola_lab/form/base","#modal")','Add New Kelola Laboratorium','btn btn-success');
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
                <th>Nama Lab</th>
                <th>Alamat Lab</th>
                <th>Tipe Lab</th>
                <th>Kor Lab</th>
                <th>Laboran</th>
                <th>Foto Lab</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($kelola_lab->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_lab?></td>
            <td align="center"><?=$row->alamat_lab?></td>
            <td align="center"><?=$row->tipe_lab?></td> 
            <td align="center"><?=$row->kor_lab?></td>
            <td align="center"><?=$row->laboran?></td>
            <td align="center"><img src="<?php echo base_url().$row->foto_lab; ?>" class="file-preview-image"></td>
            <td align="center"><span class="badge bg-green"><?=$row->status?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3') {
                echo button('load_silent("kelola/kelola_lab/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
           <?php
            $sesi = from_session('level');
            if ($sesi == '1' || $sesi == '3') {
             echo button('load_silent("kelola/kelola_lab/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
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