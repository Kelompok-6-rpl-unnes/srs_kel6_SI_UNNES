<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    <div class="form-group">
            <label class="col-sm-4 control-label">ID Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'id_peminjaman','value'=>$row->id_peminjaman,'class'=>'form-control'));?>
            <?php echo form_error('id_peminjaman');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'nama','value'=>$row->nama,'class'=>'form-control'));?>
            <?php echo form_error('nama');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nomor Induk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nomor_induk','value'=>$row->nomor_induk,'class'=>'form-control'));?>
            <?php echo form_error('nomor_induk');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jenis','value'=>$row->jenis,'class'=>'form-control'));?>
            <?php echo form_error('jenis');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Barang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_barang','value'=>$row->nama_barang,'class'=>'form-control'));?>
            <?php echo form_error('nama_barang');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Merk Barang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk_barang','value'=>$row->merk_barang,'class'=>'form-control'));?>
            <?php echo form_error('merk_barang');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Seri Barang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'seri_barang','value'=>$row->seri_barang,'class'=>'form-control'));?>
            <?php echo form_error('seri_barang');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Sistem Penggantian</label>
            <select name ='sistem_penggantian'>
          <div class="col-sm-8">
          <option value ='Belum Diganti'>Belum Diganti</option>
          <option value ='Sudah Diganti'>Sudah Diganti</option>
          </select>
        </div>
        <div class="form-group">
        <label class="col-sm-4 control-label">Status</label>
          <select name ='status'>
          <div class="col-sm-8">
          <option value ='Ada'>Ada</option>
          <option value ='Tidak'>Tidak</option>
          </select>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"peminjaman/penggantian/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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