<div class="col-md-12">
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <!-- <div class="widget-user-header bg-black" style="background: url('<?php echo base_url();?>assets/img/photo1.png') center center;height:320px;"> -->
             <!--  <h3 class="widget-user-username"><?=from_session('nama')?></h3>
              <h5 class="widget-user-desc"><?=from_session('nama_level')?></h5>
            </div>
            <div class="widget-user-image"> -->          
    <div class="box-footer">
              <div class="row">
                <div class="col-sm-12 border-right">
                  <div class="description-block">
                    <?php
                  $avatar = parse_avatar(from_session('gambar'),from_session('nama'),40,'img-circle');
                ?>
                <?php echo $avatar; ?>
                    <h5 class="description-header">SELAMAT DATANG DI EDLABS</h5>
                    <span class="description-text"><?php echo button('load_silent("cms/user/show_editForm_user/'.from_session('id').'","#content")','Update Profil','btn bg-purple','data-toggle="tooltip" title="Update Profil"');?> 
						</span>
                  </div>
                 <!-- /.description-block -->
                </div>
                <div class="box-body">
                <div class="row">
                <div class="col-sm-12 border-right">
                <?php require_once ('application/views/dasbord.php') ?>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
          </div>
          <!-- /.widget-user -->
        </div>

        <div class="box-body">
              <div class="callout callout-danger">
                <h4>Anda Memiliki Tanggungan Pengembalian!</h4>

                <p>Silahkan selesaikan tanggungan pengembalian.</p>
              </div>
              <div class="callout callout-info">
                <h4>Pengumuman Libur Semester!</h4>

                <p>Libur Semester Mulai 4 Juni-5 Juli 2020.</p>
              </div>
              <div class="callout callout-warning">
                <h4>Peminjaman Masih Menunggu Persetujuan!</h4>

                <p>Menunggu Sampai Disetujui.</p>
              </div>
              <div class="callout callout-success">
                <h4>Tanggungan Jatuh Tempo</h4>

                <p>Harap Segera Dikembalikan.</p>
              </div>
              <div class="callout callout-success">

            </div>
           
              <div class="row">
                <div class="col-md-8">
                  <p class="text-center">
                    <strong>EDLABS: 1 Jul, 2020 - 30 Jul, 2020</strong>
                  </p>

                  <div class="chart">
                    <!-- Sales Chart Canvas -->
                    <canvas id="salesChart" style="height: 83px; width: 468px;" height="62" width="351"></canvas>
                  </div>
                  <!-- /.chart-responsive -->
                </div>
                <!-- /.col -->
                <div class="col-md-4">
                  <p class="text-center">
                    <strong>Peminjaman</strong>
                  </p>

                  <div class="progress-group">
                    <span class="progress-text">Menunggu Persetujuan</span>
                    <span class="progress-number"><b>20</b>/50</span>

                    <div class="progress sm">
                      <div class="progress-bar progress-bar-aqua" style="width: 80%"></div>
                    </div>
                  </div>
                  <!-- /.progress-group -->
                  <div class="progress-group">
                    <span class="progress-text">Disetujui</span>
                    <span class="progress-number"><b>30</b>/50</span>

                    <div class="progress sm">
                      <div class="progress-bar progress-bar-red" style="width: 80%"></div>
                    </div>
                  </div>
                  <!-- /.progress-group -->
                  <div class="progress-group">
                    <span class="progress-text">Sudah Dikembalikan</span>
                    <span class="progress-number"><b>10</b>/50</span>

                    <div class="progress sm">
                      <div class="progress-bar progress-bar-green" style="width: 80%"></div>
                    </div>
                  </div>
                  <!-- /.progress-group -->
                  <div class="progress-group">
                    <span class="progress-text">Tidak Disetujui</span>
                    <span class="progress-number"><b>5</b>/50</span>

                    <div class="progress sm">
                      <div class="progress-bar progress-bar-yellow" style="width: 80%"></div>
                    </div>
                  </div>
                  <!-- /.progress-group -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <div class="chart">
                    <!-- Sales Chart Canvas -->
                    <canvas id="salesChart" style="height: 83px; width: 468px;" height="62" width="351"></canvas>
                  </div>
                  <?php require_once ('application/views/timeline.php') ?>