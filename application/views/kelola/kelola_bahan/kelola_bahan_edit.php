<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<?php $row = fetch_single_row($edit); ?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>

        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Bahan</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <div class="form-group">
                <select class="form-control" name="id_nama_bahan">
                <?php foreach ($nama_bahan->result() as $nama_bahan): ?>
                    <option value="<?= $nama_bahan->id ?>" <?= $nama_bahan->id == $row->id_nama_bahan ? "selected" : null ?>><?= $nama_bahan->nama_bahan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('id_nama_alat');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Satuan Bahan</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="nama_satuan">
                <?php foreach ($Nama->result() as $Nama): ?>
                    <option value="<?= $Nama->id ?>" <?= $Nama->id == $row->nama_satuan ? "selected" : null ?>><?= $Nama->Nama ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('nama_satuan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="kategori">
                <?php foreach ($Kategori->result() as $Kategori): ?>
                    <option value="<?= $Kategori->id ?>" <?= $Kategori->id == $row->kategori ? "selected" : null ?>><?= $Kategori->Kategori ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('kategori');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Merk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk','class'=>'form-control', 'value'=>$row->merk));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
       
        <div class="form-group">
            <label class="col-sm-4 control-label">Pendanaan</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="pendanaan">
                <?php foreach ($sumber_pendanaan->result() as $sumber_pendanaan): ?>
                    <option value="<?= $sumber_pendanaan->id ?>" <?= $sumber_pendanaan->id == $row->pendanaan ? "selected" : null ?>><?= $sumber_pendanaan->sumber_pendanaan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stock</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok','class'=>'form-control', 'value'=>$row->stok));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Lokasi</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="lokasi">
                <?php foreach ($lokasi->result() as $lokasi): ?>
                    <option value="<?= $lokasi->id ?>" <?= $lokasi->id == $row->lokasi ? "selected" : null ?>><?= $lokasi->nama_lokasi_penyimpanan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('kode');?>
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
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status','class'=>'form-control', 'value'=>$row->status));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_bahan/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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