<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<?php $row = fetch_single_row($edit); ?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>

        <?php echo form_hidden('id',$row->id); ?>

        <div class="form-group">
            <label class="col-sm-4 control-label">Status User</label>
            <select name ='status_user'>
          <div class="col-sm-8">
          <option value ='Bebas Tanggungan'>Bebas Tanggungan</option><span class="badge bg-green">
          <option value ='Ada Tanggungan'>Ada Tanggungan</option><span class="badge bg-red">
          </select>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/jatuh_tempo/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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
      
     