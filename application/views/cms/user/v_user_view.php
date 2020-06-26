<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php require_once ('application/views/dasbord.php') ?> 
<div class="row" id="form_pembelian">
  <div class="col-lg-12">
    <div class="box box-primary">
      <div class="box-header with-border">
        <h3 class="box-title">Kelola User</h3>

        <div class="box-tools pull-right">
          
        </div>
      </div>

      <div class="box-body">
        <table width="100%" id="tableku" class="table table-striped">
          <thead>
            <th>No</th>
            <th>Nama</th>
            <th>Nomor Induk</th>
            <th>Jenis Kelamin</th>
            <th>Picture</th>
            <th>Email</th>
            <th>Level</th>
            <th>Status</th>
            <th>No HP</th>
            <th></th>
          </thead>
          <tbody>
      <?php 
      $i = 1;
      foreach($user->result() as $row):
      $avatar = parse_avatar($row->gambar,$row->nama,75,'');             
      ?>
      <tr>
      <td align="center"><?=$i++?></td>
      <td align="center"><?=$row->nama?></td>
      <td align="center"><?=$row->username?></td>
      <td align="center"><?=$row->jenis_kelamin?></td>
      <td align="center"><?=$avatar?></td>
      <td align="center"><?=$row->email?></td>
      <td align="center"><?=$row->level?></td>
      <td align="center"><?=$row->status?></td>
      <td align="center"><?=$row->no_hp?></td>
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