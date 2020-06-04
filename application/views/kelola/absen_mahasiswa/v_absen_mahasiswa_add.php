<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nomor Induk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nomor_induk','class'=>'form-control'));?>
            <?php echo form_error('nomor_induk');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama','class'=>'form-control'));?>
            <?php echo form_error('nama');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
        <label class="col-sm-4 control-label">Tanggal</label>
        <div class="col-sm-8">
        <?php echo form_input(array('name'=>'tanggal','class'=>'form-control'));?>
        <?php echo form_error('tanggal');?>
        <span id="check_data"></span>
        </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <input type="radio" name="keterangan" value="Hadir">Hadir<br/>
            <div class="col-sm-8">
            </div> 
           <input type="radio" name="keterangan" value="Tidak Hadir">Tidak Hadir<br/> 
           <div class="col-sm-4">
           </div>
            <input type="radio" name="keterangan" value="Tanpa Keterangan">Tanpa Keterangan<br/>
            <div class="col-sm-8">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah Kehadiran</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah_kehadiran','class'=>'form-control'));?>
            <?php echo form_error('jumlah_kehadiran');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Prodi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'prodi','class'=>'form-control'));?>
            <?php echo form_error('prodi');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Mata Kuliah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'mata_kuliah','class'=>'form-control'));?>
            <?php echo form_error('mata_kuliah');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Rombel</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'rombel','class'=>'form-control'));?>
            <?php echo form_error('rombel');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/absen_mahasiswa/show_addForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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