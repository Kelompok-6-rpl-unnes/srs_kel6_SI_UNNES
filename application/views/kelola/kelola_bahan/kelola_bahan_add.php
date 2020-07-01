<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Bahan</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="nama_bahan">
                <?php foreach ($nama_bahan->result() as $nama_bahan): ?>
                    <option value="<?= $nama_bahan->id ?>"><?= $nama_bahan->nama_bahan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('nama_bahan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Satuan Bahan</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="nama_satuan">
                <?php foreach ($Nama->result() as $Nama): ?>
                    <option value="<?= $Nama->id ?>"><?= $Nama->Nama ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('nama_satuan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="kategori">
                <?php foreach ($Kategori->result() as $Kategori): ?>
                    <option value="<?= $Kategori->id ?>" ><?= $Kategori->Kategori ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('kategori');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Merk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk','class'=>'form-control'));?>
            <?php echo form_error('merk');?>
            </div>
        </div>
       
        <div class="form-group">
            <label class="col-sm-4 control-label">Pendanaan</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="pendanaan">
                <?php foreach ($sumber_pendanaan->result() as $sumber_pendanaan): ?>
                    <option value="<?= $sumber_pendanaan->id ?>"><?= $sumber_pendanaan->sumber_pendanaan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('pendanaan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stock</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok','class'=>'form-control'));?>
            <?php echo form_error('stok');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Lokasi</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="lokasi">
                <?php foreach ($nama_lokasi_penyimpanan->result() as $nama_lokasi_penyimpanan): ?>
                    <option value="<?= $nama_lokasi_penyimpanan->id ?>" ><?= $nama_lokasi_penyimpanan->nama_lokasi_penyimpanan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('lokasi');?>
            </div>
        </div>      
              
        <div class="form-group">
            <label class="col-sm-4 control-label">Kondisi</label>
            <select name ='kondisi'>
          <div class="col-sm-8">
          <option value ='Bagus'>Bagus</option>
          <option value ='Rusak'>Rusak</option>
          <option value ='Perlu Diservice'>Perlu Diservice</option>
          </select>
          </div>
       
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status','class'=>'form-control'));?>
            <?php echo form_error('status');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_bahan/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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