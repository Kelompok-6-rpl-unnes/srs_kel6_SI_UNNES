<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Sumber Pendanaan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sumber_pendanaan','class'=>'form-control'));?>
            <?php echo form_error('sumber_pendanaan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Sejumlah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sejumlah','class'=>'form-control'));?>
            <?php echo form_error('sejumlah');?>
            <span id="check_data"></span>
            </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <select name ='keterangan'>
          <div class="col-sm-8">
          <option value ='Sudah Masuk'>Sudah Masuk</option>
          <option value ='Belum Masuk'>Belum Masuk</option>
          </select>
            <span id="check_data"></span>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan?</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/sumber_pendanaan/show_addForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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
