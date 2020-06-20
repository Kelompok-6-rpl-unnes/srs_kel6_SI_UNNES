<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'kode','value'=>$row->kode,'class'=>'form-control'));?>
            <?php echo form_error('kode');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat dan Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'pinjam_alat_bahan','value'=>$row->pinjam_alat_bahan,'class'=>'form-control'));?>
            <?php echo form_error('pinjam_alat_bahan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori Peminjaman</label>
            <select name ='kategori_pinjam'>
          <div class="col-sm-8">
          <option value ='Alat'>Alat</option>
          <option value ='Bahan'>Bahan</option>
          </select>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah','value'=>$row->jumlah,'class'=>'form-control'));?>
            <?php echo form_error('jumlah');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Peminjaman</label>
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
            <label class="col-sm-4 control-label">Keterangan</label>
            <select name ='keterangan'>
          <div class="col-sm-8">
          <option value ='Menunggu Persetujuan'>Menunggu Persetujuan</option>
          <option value ='Peminjaman Disetujui'>Peminjaman Disetujui</option>
          <option value ='Sudah Dikembalikan'>Sudah Dikembalikan</option>
          </select>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keperluan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keperluan','value'=>$row->keperluan,'class'=>'form-control'));?>
            <?php echo form_error('keperluan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"peminjaman/pinjam_alat_bahan/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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
