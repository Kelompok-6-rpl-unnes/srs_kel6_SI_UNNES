<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">ID Pengajuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'periode_pengajuan','class'=>'form-control'));?>
            <?php echo form_error('periode_pengajuan');?>
            <span id="check_data"></span>
            </div> 
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Semester</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'semester','class'=>'form-control'));?>
            <?php echo form_error('semester');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Bulan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'bulan','class'=>'form-control'));?>
            <?php echo form_error('bulan');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Tahun</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tahun','class'=>'form-control'));?>
            <?php echo form_error('tahun');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Sumber Pendanaan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sumber_pendanaan','class'=>'form-control'));?>
            <?php echo form_error('sumber_pendanaan');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Pajak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'pajak','class'=>'form-control'));?>
            <?php echo form_error('pajak');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Status Pengajuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status_pengajuan','class'=>'form-control'));?>
            <?php echo form_error('status_pengajuan');?>
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
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"pengajuan/periode_pengajuan/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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