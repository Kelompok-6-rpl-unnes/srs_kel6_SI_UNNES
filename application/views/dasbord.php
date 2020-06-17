<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<section class="content" style="height: auto !important; min-height: 0px !important;">
		<!-- Small boxes (Stat box) --> 
		<div class="row">
		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-green">
		<div class="inner">
		<h3><?= $this->fungsi->itung_lab()?></h3>
		<p>Data Lab</p>
		</div>
		<div class="icon">
		<i class="fa fa-desktop"></i>
		</div>
		<h5 class="small-box-footer"<?php echo button('load_silent("kelola/kelola_lab_view","#content")','' ,'  ');?>More info <i class="fa fa-arrow-circle-right"></i></h5>
		</div>
		</div>

        	<!-- Small boxes (Stat box) --> 
		<div class="row">
		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-purple">
		<div class="inner">
		<h3><?= $this->fungsi->itung_alat()?></h3>
		<p>Data Alat</p>
		</div>
		<div class="icon">
		<i class="fa fa-cogs"></i>
		</div>
		<h5 class="small-box-footer"<?php echo button('load_silent("master/kelola_alat_view","#content")','' ,'  ');?>More info <i class="fa fa-arrow-circle-right"></i></h5>
		</div>
		</div>

        <!-- Small boxes (Stat box) --> 
		<div class="row">
		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-yellow">
		<div class="inner">
		<h3><?= $this->fungsi->itung_bahan()?></h3>
		<p>Data Bahan</p>
		</div>
		<div class="icon">
		<i class="fa fa-flask"></i>
		</div>
		<h5 class="small-box-footer"<?php echo button('load_silent("kelola/kelola_bahan_view","#content")','' ,'  ');?>More info <i class="fa fa-arrow-circle-right"></i></h5>
		</div>
		</div>

		<!-- Small boxes (Stat box) --> 
		<div class="row">
		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-red">
		<div class="inner">
		<h3><?= $this->fungsi->itung_user()?></h3>
		<p>Data User</p>
		</div>
		<div class="icon">
		<i class="fa fa-group"></i>
		</div>
		<h5 class="small-box-footer"<?php echo button('load_silent("kelola/kelola_user_view","#content")','' ,'  ');?>More info <i class="fa fa-arrow-circle-right"></i></h5>
		</div>
		</div>

		