<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori No Induk</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <select name ='kategori_no_induk'>
          <option value ='Super Admin'>Super Admin</option>
          <option value ='Admin'>Admin</option>
          <option value ='Kepala Laboratorium'>Kepala Laboratorium</option>
          <option value ='Laboran'>Laboran</option>
          <option value ='Koor Laboratorium'>Koor Laboratorium</option>
          <option value ='Aslab'>Aslab</option>
          <option value ='Dosen'>Dosen</option>
          <option value ='Mahasiswa'>Mahasiswa</option>
          </select>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">No Induk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'no_induk','value'=>$row->no_induk,'class'=>'form-control'));?>
            <?php echo form_error('no_induk');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'nama','value'=>$row->nama,'class'=>'form-control'));?>
            <?php echo form_error('nama');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <select name ='keterangan'>
          <div class="col-sm-8">
          <option value ='Aktif'>Aktif</option>
          <option value ='Tidak Aktif'>Tidak Aktif</option>
          </select>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/kategori_no_induk/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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
