
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'Kategori','class'=>'form-control'));?>
            <?php echo form_error('Kategori');?>
            <span id="check_data"></span>
            </div>     
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_bahan','class'=>'form-control'));?>
            <?php echo form_error('nama_bahan');?>
            <span id="check_data"></span>
            </div>
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
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/Kategori_Bahan/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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
