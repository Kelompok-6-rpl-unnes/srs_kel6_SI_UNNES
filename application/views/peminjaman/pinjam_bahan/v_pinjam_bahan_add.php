<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    <div class="form-group">
            <label class="col-sm-4 control-label">ID Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id_peminjaman','class'=>'form-control'));?>
            <?php echo form_error('id_peminjaman');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Peminjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_peminjam','class'=>'form-control'));?>
            <?php echo form_error('nama_peminjam');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nomor Induk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nomor_induk','class'=>'form-control'));?>
            <?php echo form_error('nomor_induk');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Bahan</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="kode">
                <?php foreach ($inven_alat_bahan->result() as $inven_alat_bahan): ?>
                    <option value="<?= $inven_alat_bahan->id ?>" ><?= $inven_alat_bahan->kode?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>            
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Bahan</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="pinjam_bahan">
                <?php foreach ($master_bahan->result() as $master_bahan): ?>
                    <option value="<?= $master_bahan->id ?>" ><?= $master_bahan->nama_bahan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('pinjam_bahan');?>
            <span id="check_data"></span>
            </div>
        </div>            
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori Peminjaman</label>
            <select name ='kategori_pinjam'>
          <div class="col-sm-8">
          <option value ='Tugas'>Tugas</option>
          <option value ='Praktikum'>Praktikum</option>
          </select>
            <span id="check_data"></span>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">jumlah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah','class'=>'form-control'));?>
            <?php echo form_error('jumlah');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pinjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal','type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tanggal');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Kembali</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_kembali','type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tgl_kembali');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keperluan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keperluan','class'=>'form-control'));?>
            <?php echo form_error('keperluan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"peminjaman/pinjam_bahan/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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
