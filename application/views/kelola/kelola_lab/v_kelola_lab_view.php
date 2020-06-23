<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php require_once ('application/views/dasbord.php') ?>  
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Laboratorium </h3>

            <div class="box-tools pull-right">
            
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
              <th>ID</th>
                <th>Nama Lab</th>
                <th>Alamat Lab</th>
                <th>Tipe Lab</th>
                <th>Kor Lab</th>
                <th>Laboran</th>
                <th>Foto Lab</th>
                <th>Status</th>
                <th></th>
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
            <td align="center"><?=$row->status?></td>
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
      </div>
      </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>