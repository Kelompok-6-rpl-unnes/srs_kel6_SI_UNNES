
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    
        <div class="form-group">
            <label class="col-sm-4 control-label">No Induk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'NoInduk','class'=>'form-control'));?>
            <?php echo form_error('NoInduk');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Username</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Username','class'=>'form-control'));?>
            <?php echo form_error('Username');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Nama','class'=>'form-control'));?>
            <?php echo form_error('Nama');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis Kelamin</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'JenisKelamin','class'=>'form-control'));?>
            <?php echo form_error('JenisKelamin');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Foto</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Foto','class'=>'form-control'));?>
            <?php echo form_error('Foto');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Email</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Email','class'=>'form-control'));?>
            <?php echo form_error('Email');?>
            <span id="check_data"></span>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">No Telp</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'NoTelp','class'=>'form-control'));?>
            <?php echo form_error('NoTelp');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Level</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Level','class'=>'form-control'));?>
            <?php echo form_error('Level');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Status','class'=>'form-control'));?>
            <?php echo form_error('Status');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/user/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>