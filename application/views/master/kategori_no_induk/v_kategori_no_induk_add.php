
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
    <div class="form-group">
            <label class="col-sm-4 control-label">Kategori No Induk</label>
            <div class="col-sm-8">
            <select name ='kategori_no_induk'>
          <option value ='Mahasiswa'>Mahasiswa</option>
          <option value ='Dosen'>Dosen</option>
          <option value ='Super Admin'>Super Admin</option>
          <option value ='Admin'>Admin</option>
          <option value ='Laboran'>Laboran</option>
          <option value ='Asisten Laboratorium'>Asisten Laboratorium</option>
          <option value ='Ketua Laboratorium'>Ketua Laboratorium</option>
          <option value ='Koordinator Laboratorium'>Koordinator Laboratorium</option>
          </select>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">No Induk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'no_induk','class'=>'form-control'));?>
            <?php echo form_error('no_induk');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama','class'=>'form-control'));?>
            <?php echo form_error('nama');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <div class="col-sm-8">
            <select name ='keterangan'>
          <div class="col-sm-8">
          <option value ='Aktif'>Aktif</option>
          <option value ='Tidak Aktif'>Tidak Aktif</option>
          </select>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php echo button('send_form(document.faddmenugrup,"master/kategori_no_induk/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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