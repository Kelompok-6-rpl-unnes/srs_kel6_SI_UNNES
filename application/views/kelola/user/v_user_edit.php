<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">No Induk</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'NoInduk','value'=>$row->NoInduk,'class'=>'form-control'));?>
            <?php echo form_error('NoInduk');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Username</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Username','value'=>$row->Username,'class'=>'form-control'));?>
            <?php echo form_error('Username');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Nama','value'=>$row->Nama,'class'=>'form-control'));?>
            <?php echo form_error('Nama');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis Kelamin</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'JenisKelamin','value'=>$row->JenisKelamin,'class'=>'form-control'));?>
            <?php echo form_error('JenisKelamin');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Foto</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Foto','value'=>$row->Foto,'class'=>'form-control'));?>
            <?php echo form_error('Foto');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Email</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Email','value'=>$row->Email,'class'=>'form-control'));?>
            <?php echo form_error('Email');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">No Telp</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'NoTelp','value'=>$row->NoTelp,'class'=>'form-control'));?>
            <?php echo form_error('NoTelp');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Level</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Level','value'=>$row->Level,'class'=>'form-control'));?>
            <?php echo form_error('Level');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Status','value'=>$row->Status,'class'=>'form-control'));?>
            <?php echo form_error('Status');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/user/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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