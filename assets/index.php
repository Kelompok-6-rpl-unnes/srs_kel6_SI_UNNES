
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sistem Laboratorium</title>
    <link rel="shortcut icon" href="http://localhost/srs_kel6_SI_UNNES/assets/img/title.png" />
    <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNESassets/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/css/ionicons.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
  folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <!-- <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/plugins/morris/morris.css"> -->
  <!-- jvectormap -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/plugins/daterangepicker/daterangepicker-bs3.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <!-- GROWL NOTIFICATION -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/css/jquery.growl.css">
  <!-- SELECT2 -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/css/select2.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/plugins/datatables/dataTables.bootstrap.css">
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/plugins/datatables/extensions/FixedColumns/css/dataTables.fixedColumns.min.css"></script>
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/plugins/datatables/extensions/TableTools/css/dataTables.tableTools.min.css"></script>
  <!-- Theme style -->
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/css/AdminLTE.css">
  <link rel="stylesheet" href="http://localhost/srs_kel6_SI_UNNES/assets/plugins/pace/pace.min.css">
  <link href="http://localhost/srs_kel6_SI_UNNES/assets/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
  </head>
  <body class="hold-transition skin-purple-light sidebar-mini fixed">
  <style type="text/css">
  .not-active {
   pointer-events: none;
   cursor: default;
  }
  </style>
  <style type="text/css" media="screen">
  .table>tbody>tr>th,.table>tfoot>tr>th,.table>thead>tr>th {
    text-align: center;
  }
  </style>
  <div id="context">
  <div id='modal'></div>
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="#" class="logo">
          <!-- logo for regular state and mobile devices -->
          <span class="logo-mini">EDUCATION LABORATORIUM SYSTEM</span>
          <span class="logo-lg">EDUCATION LABORATORIUM SYSTEM</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu" >
            <ul class="nav navbar-nav">
              <li class="dropdown tasks-menu">
                <a href="http://localhost/srs_kel6_SI_UNNES/login/logout/">
                  <i class="fa fa-fw fa-power-off"></i>&nbsp;
                  Logout </a>
              </li>             
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
                            <img src="http://localhost/srs_kel6_SI_UNNES/assets/img/avatar04.png" alt="Kholiq" title="Kholiq" width="40" height="40" class=""/>            </div>
            <div class="pull-left info">
              <p><font color="#bfbfbf" size="2px">Login As :</font></p>
              <p>Kholiq</p>
              <p>Super Admin</p>
            </div>
          </div>
          <ul class="sidebar-menu">
            <li class="header" style="background:#E8E8E8;"><b>Menu Utama</b></li>
            <li class="active treeview">
              
             
            </li>
                        <li class="treeview">
              <a href="#" id="Dashboard">
                <i class="fa fa-"></i> <span>Dashboard</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                                <li><a class="" onclick="load_silent('pak/dashboard/status_pak','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Home</a></li>
                              </ul>
            </li>
                         <li class="treeview">
              <a href="#" id="Peminjaman">
                <i class="fa fa-fw fa-pen-square"></i> <span>Peminjaman</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                                <li><a class="" onclick="load_silent('peminjaman/buat_peminjaman','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Buat Peminjaman</a></li>
                                <li><a class="" onclick="load_silent('peminjaman/cek_status_peminjaman','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Cek Status Peminjaman</a></li>
                              </ul>
            </li>
                         <li class="treeview">
              <a href="#" id="Pengajuan">
                <i class="fa fa-fw fa-envelope"></i> <span>Pengajuan</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                                <li><a class="" onclick="load_silent('pengajuan/pengajuan_alat','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Pengajuan Alat</a></li>
                                <li><a class="" onclick="load_silent('pengajuan/periode_pengajuan','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Periode Pengajuan</a></li>
                                <li><a class="" onclick="load_silent('pengajuan/pengajuan_bahan','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Pengajuan Bahan </a></li>
                              </ul>
            </li>
                         <li class="treeview">
              <a href="#" id="Kelola">
                <i class="fa fa-fw fa-tasks"></i> <span>Kelola</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                                <li><a class="" onclick="load_silent('kelola/kelola_alat','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Kelola Alat</a></li>
                                <li><a class="" onclick="load_silent('kelola/kelola_bahan','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Kelola Bahan</a></li>
                                <li><a class="" onclick="load_silent('kelola/kelola_penyimpanan','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Kelola Penyimpanan</a></li>
                                <li><a class="" onclick="load_silent('kelola/kelola_penyimpanan','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Kelola Peminjaman</a></li>
                                <li><a class="" onclick="load_silent('kelola/kelola_jatuh_tempo','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Kelola Jatuh Tempo</a></li>
                                <li><a class="" onclick="load_silent('kelola/kelola_penggantian','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Kelola Penggantian</a></li>
                              </ul>
            </li>
                         <li class="treeview">
              <a href="#" id="Master">
                <i class="fa fa-fw fa-archive"></i> <span>Master</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                                <li><a class="" onclick="load_silent('master/instansi','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Instansi</a></li>
                                <li><a class="" onclick="load_silent('master/gambar_depan','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Gambar Depan</a></li>
                                <li><a class="" onclick="load_silent('master/kategori_no_induk','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Kategori No Induk</a></li>
                                <li><a class="" onclick="load_silent('master/kategori_alat_bahan','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Kategori Alat dan Bahan</a></li>
                                <li><a class="" onclick="load_silent('master/tipe_lab','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Tipe Lab</a></li>
                                <li><a class="" onclick="load_silent('master/mata_kuliah','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Mata Kuliah</a></li>
                                <li><a class="" onclick="load_silent('master/nama_alat','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Nama Alat</a></li>
                                <li><a class="" onclick="load_silent('master/master_bahan','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Nama Bahan</a></li>
                                <li><a class="" onclick="load_silent('master/satuan','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Satuan</a></li>
                                <li><a class="" onclick="load_silent('master/sumber_pendanaan','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Sumber Pendanaan</a></li>
                              </ul>
            </li>
                         <li class="treeview">
              <a href="#" id="Manajemen">
                <i class="fa fa-fw fa-book"></i> <span>Manajemen</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                                <li><a class="" onclick="load_silent('cms/catatan/catat','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Log System</a></li>
                                <li><a class="" onclick="load_silent('cms/manage/menu','#content')" href="javascript:void(0)"><i class="fa fa-circle-o"></i>Menu</a></li>
                              </ul>
            </li>
                       </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div style="min-height: 916px;"  class="content-wrapper">
        <section id="content" class="content">
             <!-- /.row -->
        </section>
      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 1.0.0
        </div>
        <strong>Copyright &copy; 2020 GINA,DWIKA,ERIKA,FREDY.</strong>
      </footer>

      <!-- Control Sidebar -->
      
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
    </div><!-- ./wrapper -->

 <!-- jQuery 2.1.4 -->
 <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/js/jquery-ui.min.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/plugins/pace/pace.min.js"></script>    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <!-- Bootstrap 3.3.5 -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/js/bootstrap.min.js"></script>
    <!-- Select2 -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/plugins/select2/select2.full.min.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/js/fileinput.min.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/js/ajaxFileUpload.js"></script>    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <!-- Sparkline -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/plugins/sparkline/jquery.sparkline.min.js"></script>    <!-- jvectormap -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>    <!-- jQuery Knob Chart -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/plugins/knob/jquery.knob.js"></script>    <!-- daterangepicker -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/js/moment.min.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/js/ckeditor.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/plugins/daterangepicker/daterangepicker.js"></script>    <!-- datepicker -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/plugins/datepicker/bootstrap-datepicker.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/plugins/autocomplete/jquery.autocomplete.js"></script>    <!-- Bootstrap WYSIHTML5 -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>    <!-- Slimscroll -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/plugins/slimScroll/jquery.slimscroll.min.js"></script>    <!-- FastClick -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/plugins/fastclick/fastclick.min.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>    <!-- AdminLTE App -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/js/jquery.blockUI.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/js/app.min.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/js/bootapp_back.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/plugins/fullcalendar/fullcalendar.min.js"></script>
    <!-- GROWL NOTIFICATION -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/js/jquery.growl.js"></script>

    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/plugins/input-mask/jquery.inputmask.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/plugins/input-mask/jquery.inputmask.extensions.js"></script>
    <!-- DataTables -->
    <script type="text/javascript" src="http://localhost/srs_kel6_SI_UNNES/assets/plugins/datatables/jquery.dataTables.min.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/plugins/datatables/dataTables.bootstrap.min.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/plugins/datatables/extensions/FixedColumns/js/dataTables.fixedColumns.min.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>    <script type="text/javascript" src="http://localhost/laboratorium_siladu/assets/js/dataTables.fixedColumns.min.js"></script>
    <script>
    $(document).ajaxStart(function() { Pace.restart(); });
    var site = 'http://localhost/srs_kel6_SI_UNNES/';
    var base = 'http://localhost/srs_kel6_SI_UNNES/';
    var gbr1 = 'http://localhost/srs_kel6_SI_UNNES/assets/img/loaders/biru.jpg'
    var gbr2 = 'http://localhost/srs_kel6_SI_UNNES/assets/img/loaders/4.gif'
      $.widget.bridge('uibutton', $.ui.button);
    $(function() {
      $('#Dashboard').click();
    });
    </script>
  
  </body>
</html>
 
