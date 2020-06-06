<!-- Main content --> 
<section class="content">
		<!-- Small boxes (Stat box) --> 
		<div class="row">
		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-green">
		<div class="inner">
		<h3>150</h3>
		<p>Data Lab</p>
		</div>
		<div class="icon">
		<i class ="fa fa-desktop"></i>
		</div>
		<a href="?page" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
		</div>
		</div>

    <!-- Small boxes (Stat box) --> 
		<div class="row">
		<div class="col-lg-3 col-xs-6">
		<!-- small box --> 
		<div class="small-box bg-purple">
		<div class="inner">
		<h3>53</h3>
		<p>Data Alat</p>
		</div>
		<div class="icon">
		<i class="fa fa-cogs"></i>
		</div>
		<a href="application/master/nama_alat" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
		</div>
		</div>

		<!-- ./col --> 
		<div class="col-lg-3 col-xs-6">
		<!-- small box --> 
		<div class="small-box bg-orange">
		<div class="inner">
		<h3>44</h3>
		<p>Data Bahan</p>
		</div>
		<div class="icon">
		<i class="fa fa-flask"></i>
		</div>
		<a href="?page" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
		</div>
    </div>

		<!-- ./col -->
		<div class="col-lg-3 col-xs-6">
		<!-- small box --> 
		<div class="small-box bg-yellow">
		<div class="inner">
		<h3>65</h3> 
		<p>Data modul</p>
		</div>
		<div class="icon">
		<i class="fa fa-globe"></i>
		</div>
		<a href="?page" class="small-box-footer">More info <i class ="fa fa-arrow-circle-right"></i></a>
		</div>
		</div>
    </div>
    
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Periode Pengajuan</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("pengajuan/periode_pengajuan/form/base","#modal")','Add New periode pengajuan','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>ID Pengajuan</th>
                <th>Semester</th>
                <th>Bulan</th>
                <th>Tahun</th>
                <th>Sumber Pendanaan</th>
                <th>Pajak</th>
                <th>Status Pengajuan</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($periode_pengajuan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->periode_pengajuan?></td>
            <td align="center"><?=$row->semester?></td>
            <td align="center"><?=$row->bulan?></td>
            <td align="center"><?=$row->tahun?></td>
            <td align="center"><?=$row->sumber_pendanaan?></td>
            <td align="center"><?=$row->pajak?></td>
            <td align="center"><?=$row->status_pengajuan?></td>
            <td align="center"><?=$row->status?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("pengajuan/periode_pengajuan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
 
              } else {
                # code...
              }
              ?>
              <a href="<?= site_url('pengajuan/periode_pengajuan/delete/'.$row->id) ?>" class="btn btn-danger" onclick="return confirm('Anda yakin ingin menghapus periode pengajuan ?')"><i class="fa fa-trash"></i></a>

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