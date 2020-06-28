<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Periode</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'periode','class'=>'form-control'));?>
            <?php echo form_error('periode');?>
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
            <label class="col-sm-4 control-label">Seri</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'seri','class'=>'form-control'));?>
            <?php echo form_error('seri');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Merk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk','class'=>'form-control'));?>
            <?php echo form_error('merk');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah Grosir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah_grosir','class'=>'form-control'));?>
            <?php echo form_error('jumlah_grosir');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Grosir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_grosir','class'=>'form-control'));?>
            <?php echo form_error('harga_grosir');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Estimasi Jumlah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'estimasi_jumlah','class'=>'form-control'));?>
            <?php echo form_error('estimasi_jumlah');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Dasar</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_dasar','class'=>'form-control'));?>
            <?php echo form_error('harga_dasar');?>
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
            <label class="col-sm-4 control-label">Status</label>
            <select name ='status'>
          <div class="col-sm-8">
          <option value ='Ajukan'>Ajukan</option>
          </select>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"pengajuan/pengajuan_bahan/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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