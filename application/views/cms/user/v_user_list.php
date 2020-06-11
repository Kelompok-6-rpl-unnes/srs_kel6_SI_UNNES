<!-- Main content --> 
<section class="content">
		<!-- Small boxes (Stat box) --> 
		<div class="row">
		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-green">
		<div class="inner">
		<h3>20</h3>
		<p>Data Lab</p>
		</div>
		<div class="icon">
		<i class ="fa fa-desktop"></i>
		</div>
		<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
		</div>
		</div>

    <!-- Small boxes (Stat box) --> 
		<div class="row">
		<div class="col-lg-3 col-xs-6">
		<!-- small box --> 
		<div class="small-box bg-purple">
		<div class="inner">
		<h3>10</h3>
		<p>Data Alat</p>
		</div>
		<div class="icon">
		<i class="fa fa-cogs"></i>
		</div>
		<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
		</div>
		</div>

		<!-- ./col --> 
		<div class="col-lg-3 col-xs-6">
		<!-- small box --> 
		<div class="small-box bg-orange">
		<div class="inner">
		<h3>5</h3>
		<p>Data Bahan</p>
		</div>
		<div class="icon">
		<i class="fa fa-flask"></i>
		</div>
		<a href="?master=nama_alat" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
		</div>
    </div>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola User</h3>

            <div class="box-tools pull-right">
              <?php echo button('load_silent("kelola/kelola_user/show_addForm/","#content")','Add New User','btn btn-success','data-toggle="tooltip" title="Add New User"');?> 
            </div>
          </div>

          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Nama</th>
                <th>Username</th>
                <th>Jenis Kelamin</th>
                <th>Picture</th>
                <th>Email</th>
                <th>Level</th>
                <th>Status</th>
                <th>No HP</th>
                <th>Act</th>
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
          <?php echo button('load_silent("kelola/kelola_user/show_editForm/'.$row->id.'","#content")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');?>
            <?php echo button('load_silent("kelola/kelola_user/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?>   
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