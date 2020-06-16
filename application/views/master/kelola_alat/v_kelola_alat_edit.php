<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <div class="form-group">
            <select class="form-control" name="nama_alat">
            <?php foreach ($nama_alat->result() as $nama_alat): ?>
            <option value="<?= $nama_alat->id ?>" <?= $nama_alat->id == $row->nama_alat ? "selected" : null ?>><?= $nama_alat->nama_alat ?></option>
            <?php endforeach; ?>
            </select>
            </div>
            <?php echo form_error('nama_alat');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Satuan</label>
            <div class="col-sm-8">
            <div class="form-group">
            <select class="form-control" name="satuan_alat">
            <?php foreach ($satuan->result() as $satuan): ?>
            <option value="<?= $satuan->id ?>" <?= $satuan->id == $row->satuan_alat ? "selected" : null ?>><?= $satuan->Nama ?></option>
            <?php endforeach; ?>
            </select>
            </div>
            <?php echo form_error('satuan_alat');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori</label>
            <div class="col-sm-8">
            <div class="form-group">
            <select class="form-control" name="kategori">
            <?php foreach ($Kategori_Alat_Bahan->result() as $Kategori_Alat_Bahan): ?>
            <option value="<?= $Kategori_Alat_Bahan->id?>" <?= $Kategori_Alat_Bahan->id == $row->kategori ? "selected" : null ?>><?= $Kategori_Alat_Bahan->Kategori ?></option>
            <?php endforeach; ?>
            </select>
            </div>
            <?php echo form_error('kategori');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stock</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok', 'class'=>'form-control', 'value'=>$row->stok));?>
            <?php echo form_error('kode');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stock Minimal</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok_minimal','class'=>'form-control','value'=>$row->stok_minimal));?>
            <?php echo form_error('kode');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Lokasi</label>
            <div class="col-sm-8">
            <div class="form-group">
            <select class="form-control" name="lokasi">
            <?php foreach ($lokasi_penyimpanan->result() as $lokasi_penyimpanan): ?>
            <option value="<?= $lokasi_penyimpanan->id ?>" <?= $lokasi_penyimpanan->id == $row->lokasi? "selected" : null ?>><?= $lokasi_penyimpanan->nama_lokasi_penyimpanan ?></option>
            <?php endforeach; ?>
            </select>
            </div>
            <?php echo form_error('kode');?>
            </div>
        </div>            
        <div class="form-group">
            <label class="col-sm-4 control-label">Pendanaan</label>
            <div class="col-sm-8">
            <div class="form-group">
            <select class="form-control" name="pendanaan">
            <?php foreach ($sumber_pendanaan->result() as $sumber_pendanaan): ?>
            <option value="<?= $sumber_pendanaan->id ?>" <?= $sumber_pendanaan->id == $row->pendanaan? "selected" : null ?>><?= $sumber_pendanaan->sumber_pendanaan ?></option>
            <?php endforeach; ?>
            </select>
            </div>
            <?php echo form_error('kode');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga','class'=>'form-control','value'=>$row->harga));?>
            <?php echo form_error('kode');?>
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
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/kelola_alat/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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