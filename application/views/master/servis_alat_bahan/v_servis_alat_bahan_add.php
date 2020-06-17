<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode','class'=>'form-control'));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat atau Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'alat_bahan','class'=>'form-control'));?>
            <?php echo form_error('alat_bahan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Servis</label>
            <div class="col-sm-8">
<<<<<<< HEAD
            <?php echo form_input(array('name'=>'tgl_servis','class'=>'form-control'));?>
=======
            <?php echo form_input(array('name'=>'tgl_servis','type'=>'date','class'=>'form-control'));?>
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001
            <?php echo form_error('tgl_servis');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
<<<<<<< HEAD
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status','class'=>'form-control'));?>
            <?php echo form_error('status');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keterangan','class'=>'form-control'));?>
            <?php echo form_error('keterangan');?>
            <span id="check_data"></span>
            </div>
        </div>
=======
            <select name ='status'>
          <div class="col-sm-8">
          <option value ='Sudah Diservice'>Sudah Diservice</option>
          </select>
            <span id="check_data"></span>
            </div>
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/servis_alat_bahan/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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