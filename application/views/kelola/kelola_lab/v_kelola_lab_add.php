<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    <div class="form-group">
            <label class="col-sm-4 control-label">ID </label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id','class'=>'form-control'));?>
            <?php echo form_error('id');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_lab','class'=>'form-control'));?>
            <?php echo form_error('nama_lab');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Alamat Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'alamat_lab','class'=>'form-control'));?>
            <?php echo form_error('alamat_lab');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tipe Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tipe_lab','class'=>'form-control'));?>
            <?php echo form_error('tipe_lab');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kor Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kor_lab','class'=>'form-control'));?>
            <?php echo form_error('kor_lab');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Laboran</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'laboran','class'=>'form-control'));?>
            <?php echo form_error('laboran');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Foto Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'foto_lab','class'=>'form-control'));?>
            <?php echo form_error('foto_lab');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status','class'=>'form-control'));?>
            <?php echo form_error('status');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_lab/show_addForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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