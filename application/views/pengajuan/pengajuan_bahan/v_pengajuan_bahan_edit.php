<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Periode</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <select class="form-control" name="periode">
                <?php foreach ($periode_pengajuan->result() as $periode_pengajuan): ?>
                    <option value="<?= $periode_pengajuan->periode_pengajuan ?>"><?= $periode_pengajuan->periode_pengajuan ?></option>
                <?php endforeach; ?>
                </select>
                <?php echo form_error('periode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Bahan</label>
            <div class="col-sm-8">
            <select class="form-control" name="nama_bahan">
                <?php foreach ($master_bahan->result() as $master_bahan): ?>
                    <option value="<?= $master_bahan->nama_bahan ?>"><?= $master_bahan->nama_bahan ?></option>
                <?php endforeach; ?>
                </select>
                <?php echo form_error('nama_bahan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Seri</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'seri','value'=>$row->seri,'class'=>'form-control'));?>
            <?php echo form_error('seri');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Merk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk','value'=>$row->merk,'class'=>'form-control'));?>
            <?php echo form_error('merk');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Satuan Grosir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'satuan_grosir','value'=>$row->satuan_grosir,'class'=>'form-control'));?>
            <?php echo form_error('satuan_grosir');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah Grosir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah_grosir','value'=>$row->jumlah_grosir,'class'=>'form-control'));?>
            <?php echo form_error('jumlah_grosir');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Grosir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_grosir','value'=>$row->harga_grosir,'class'=>'form-control'));?>
            <?php echo form_error('harga_grosir');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Estimasi Jumlah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'estimasi_jumlah','value'=>$row->estimasi_jumlah,'class'=>'form-control'));?>
            <?php echo form_error('estimasi_jumlah');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Dasar</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_dasar','value'=>$row->harga_dasar,'class'=>'form-control'));?>
            <?php echo form_error('harga_dasar');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Lab</label>
            <div class="col-sm-8">
            <select class="form-control" name="nama_lab">
                <?php foreach ($kelola_lab->result() as $kelola_lab): ?>
                    <option value="<?= $kelola_lab->nama_lab ?>"><?= $kelola_lab->nama_lab ?></option>
                <?php endforeach; ?>
                </select>
                <?php echo form_error('nama_lab');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <select name ='status'>
          <div class="col-sm-8">
          <option value ='Ajukan'>Ajukan</option>
          <option value ='Dalam Antrian'>Dalam Antrian</option>
          <option value ='Ditolak'>Ditolak</option>
          <option value ='Disetujui'>Disetujui</option>
          </select>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"pengajuan/pengajuan_bahan/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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