<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">ID Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_peminjaman','class'=>'form-control','readonly'=>'readonly', 'value'=>$kode_peminjaman));?>
            <?php echo form_error('stock');?>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Peminjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_peminjaman','class'=>'form-control', 'readonly'=>'readonly', 'value'=> from_session('nama')));?>
            <?php echo form_error('stock');?>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Kode</label>
            <div class="col-sm-8">
            
                <select class="form-control" name="kode">
                <?php foreach ($kode->result() as $kode): ?>
                    <option value="<?= $kode->kode ?>"><?= $kode->kode ?></option>
                <?php endforeach; ?>
                </select>
            
            <?php echo form_error('kode');?>
            </div>
        </div>


        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
            
                <select class="form-control" name="nama_alat">
                <?php foreach ($alat->result() as $alat): ?>
                    <option value="<?= $alat->id_nama_alat ?>"><?= $alat->nama_alat ?></option>
                <?php endforeach; ?>
                </select>
            
            <?php echo form_error('nama_alat');?>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Bahan</label>
            <div class="col-sm-8">
            
                <select class="form-control" name="nama_bahan">
                <?php foreach ($bahan->result() as $bahan): ?>
                    <option value="<?= $bahan->id_nama_bahan ?>"><?= $bahan->nama_bahan ?></option>
                <?php endforeach; ?>
                </select>
            
            <?php echo form_error('nama_bahan');?>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah','class'=>'form-control'));?>
            <?php echo form_error('jumlah');?>
            <span id="check_data"></span>
            </div>
        </div>
        
       
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Peminjaman</label>
            <div class="col-sm-8">

            <?php echo form_input(array('name'=>'tgl_pinjam','class'=>'form-control', 'value'=>now()));?>

            <?php echo form_error('tgl_pinjam');?> 
            </div>
        </div>
      

        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Kembali</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal_kembali','class'=>'form-control', 'type'=>'datetime-local'));?>
            <?php echo form_error('tanggal_kembali');?>
            </div>
        </div>

       
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <select name="status" id="" class="form-control">
                <option value="Menunggu Persetujuan">Menunggu Persetujuan</option>
            </select>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Status Pengembalian</label>
            <div class="col-sm-8">
            <select name="status_pengembalian" id="" class="form-control">
                <option value="Belum Dikembalikan">Belum Dikembalikan</option>
            </select>
            </div>
        </div>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"peminjaman/buat_peminjaman/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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