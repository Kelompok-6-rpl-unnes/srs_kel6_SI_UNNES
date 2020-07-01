<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nomor Induk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nomor_induk','class'=>'form-control'));?>
            <?php echo form_error('nomor_induk');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Lengkap</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_lengkap','class'=>'form-control'));?>
            <?php echo form_error('nama_lengkap');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal','type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tanggal');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <input type="radio" name="keterangan" value="Masuk">Masuk<br/>
            <div class="col-sm-8">
            </div> 
           <input type="radio" name="keterangan" value="Tidak Masuk">Tidak Masuk<br/> 
           <div class="col-sm-4">
           </div>
            <input type="radio" name="keterangan" value="Ijin">Ijin<br/>
            <div class="col-sm-8">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jabatan/Profesi</label>
            <select name ='jabatan'>
          <div class="col-sm-8">
          <option value ='Kepala Laboratorium'>Kepala Laboratorium</option>
          <option value ='Laboran'>Laboran</option>
          <option value ='Koor Laboratorium'>Koor Laboratorium</option>
<<<<<<< HEAD
          <option value ='Aslab<'>Aslab</option>
=======
          <option value ='Aslab'>Aslab</option>
>>>>>>> 86010a7768df52727e0e7ed6b1a0c474b9c09eb8
          </select>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/absen_tim_lab/show_addForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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