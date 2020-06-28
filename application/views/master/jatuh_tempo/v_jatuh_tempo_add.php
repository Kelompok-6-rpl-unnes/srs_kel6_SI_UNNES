<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">ID Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id_peminjaman','class'=>'form-control'));?>
            <?php echo form_error('id_peminjaman');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Peminjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_peminjam','class'=>'form-control'));?>
            <?php echo form_error('nama_peminjam');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nomor Induk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nomor_induk','class'=>'form-control'));?>
            <?php echo form_error('nomor_induk');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status User</label>
            <select name ='status_user'>
          <div class="col-sm-8">
          <option value ='Bebas Tanggungan'>Bebas Tanggungan</option><span class="badge bg-green">
          <option value ='Ada Tanggungan'>Ada Tanggungan</option><span class="badge bg-red">
          </select>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kategori_peminjaman','class'=>'form-control'));?>
            <?php echo form_error('kategori_peminjaman');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pinjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal_pinjam','type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tanggal_pinjam');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Harus Dikembalikan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal_kembali','type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tanggal_kembali');?>
            <span id="check_data"></span>
            </div>
        </div>
            <div class="form-group">
            <label class="col-sm-4 control-label">Status Peminjaman</label>
            <select name ='status_peminjaman'>
          <div class="col-sm-8">
          <option value ='Sedang Dipinjam'>Sedang Dipinjam</option>
          <option value ='Sudah Dikembalikan'>Sudah Dikembalikan</option>
          </select>
        </div>
        <div class="form-group">
        <label class="col-sm-4 control-label">Status</label>
          <select name ='status'>
          <div class="col-sm-8">
          <option value ='Ada'>Ada</option>
          <option value ='Tidak Ada'>Tidak Ada</option>
          </select>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/jatuh_tempo/show_addForm/","#divsubcontent")','Simpan','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>