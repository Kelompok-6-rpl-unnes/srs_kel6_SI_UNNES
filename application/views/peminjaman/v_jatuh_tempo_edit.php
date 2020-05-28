<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>
<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    <div class="form-group">
            <label class="col-sm-4 control-label">ID Peminjaman/label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id_peminjaman','class'=>'form-control'));?>
            <?php echo form_error('id_peminjaman');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Peminjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_peminjam','class'=>'form-control'));?>
            <?php echo form_error('nama_peminjam');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nomor Induk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nomor_induk','class'=>'form-control'));?>
            <?php echo form_error('nomor_induk');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status User</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status_user','class'=>'form-control'));?>
            <?php echo form_error('status_user');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kategori_peminjaman','class'=>'form-control'));?>
            <?php echo form_error('kategori_peminjaman');?>
            </div>
        </div>
        <div class="form-group">
        <label class="col-sm-4 control-label">Tanggal Pinjam</label>
        <div class="col-sm-8">
        <?php echo form_input(array('name'=>'tanggal_pinjam','class'=>'form-control'));?>
        <?php echo form_error('tanggal_pinjam');?>
        </div>
        </div>
            <div class="form-group">
            <label class="col-sm-4 control-label">Status Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status_peminjaman','class'=>'form-control'));?>
            <?php echo form_error('status_peminjaman');?>
           </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Cetak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'cetak','class'=>'form-control'));?>
            <?php echo form_error('cetak');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status','class'=>'form-control'));?>
            <?php echo form_error('status');?>
           </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"peminjaman/jatuh_tempo/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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