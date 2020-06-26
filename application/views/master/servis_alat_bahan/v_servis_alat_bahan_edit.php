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
            <label class="col-sm-4 control-label">Nama Alat atau Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'alat_bahan','value'=>$row->alat_bahan,'class'=>'form-control'));?>
            <?php echo form_error('alat_bahan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Servis</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_servis','type'=>'date','value'=>$row->tgl_servis,'class'=>'form-control'));?>
            <?php echo form_error('tgl_servis');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Selesai Servis</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_selesai','type'=>'date','value'=>$row->tgl_selesai,'class'=>'form-control'));?>
            <?php echo form_error('tgl_selesai');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan Kondisi</label>
            <select name ='keterangan'>
          <div class="col-sm-8">
          <option value ='Kerusakan Ringan'>Kerusakan Ringan</option>
          <option value ='Kerusakan Sedang'>Kerusakan Sedang</option>
          <option value ='Kerusakan Parah'>Kerusakan Parah</option>
          </select>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <select name ='status'>
          <div class="col-sm-8">
          <option value ='Belum Diservice'>Belum Diservice</option>
          <option value ='Sudah Diservice'>Sudah Diservice</option>
          </select>
          </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/servis_alat_bahan/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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