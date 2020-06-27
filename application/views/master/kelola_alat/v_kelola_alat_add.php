<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="nama_alat">
                <?php foreach ($nama_alat->result() as $nama_alat): ?>
                    <option value="<?= $nama_alat->id ?>"><?= $nama_alat->nama_alat?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('nama_alat');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Satuan</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="satuan_alat">
                <?php foreach ($satuan->result() as $satuan): ?>
                    <option value="<?= $satuan->id ?>"><?= $satuan->Nama ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('satuan_alat');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="kategori">
                <?php foreach ($Kategori_Alat->result() as $Kategori_Alat): ?>
                    <option value="<?= $Kategori_Alat->id ?>" ><?= $Kategori_Alat->Kategori?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('kategori');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stock</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok','class'=>'form-control'));?>
            <?php echo form_error('stok');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stock Minimal</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok_minimal','class'=>'form-control'));?>
            <?php echo form_error('stok_minimal');?>
            <span id="check_data"></span>        
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Lokasi</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="lokasi">
                <?php foreach ($lokasi_penyimpanan->result() as $lokasi_penyimpanan): ?>
                    <option value="<?= $lokasi_penyimpanan->id ?>" ><?= $lokasi_penyimpanan->nama_lokasi_penyimpanan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('lokasi');?>
            <span id="check_data"></span>
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
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga','class'=>'form-control'));?>
            <?php echo form_error('harga');?>
            <span id="check_data"></span>
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
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/kelola_alat/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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