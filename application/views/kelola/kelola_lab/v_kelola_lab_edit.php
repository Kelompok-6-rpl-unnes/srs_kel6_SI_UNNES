<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    <div class="form-group">
            <label class="col-sm-4 control-label">ID</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'id','value'=>$row->id,'class'=>'form-control'));?>
            <?php echo form_error('id');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Lab</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'nama_lab','value'=>$row->nama_lab,'class'=>'form-control'));?>
            <?php echo form_error('nama_lab');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Alamat Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'alamat_lab','value'=>$row->alamat_lab,'class'=>'form-control'));?>
            <?php echo form_error('alamat_lab');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tipe Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tipe_lab','value'=>$row->tipe_lab,'class'=>'form-control'));?>
            <?php echo form_error('tipe_lab');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kor Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kor_lab','value'=>$row->kor_lab,'class'=>'form-control'));?>
            <?php echo form_error('kor_lab');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Laboran</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'laboran','value'=>$row->laboran,'class'=>'form-control'));?>
            <?php echo form_error('laboran');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Foto Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'foto_lab','value'=>$row->foto_lab,'class'=>'form-control'));?>
            <?php echo form_error('foto_lab');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status','value'=>$row->status,'class'=>'form-control'));?>
            <?php echo form_error('status');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_lab/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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