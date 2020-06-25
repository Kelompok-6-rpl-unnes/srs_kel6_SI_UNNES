<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    <div class="form-group">
            <label class="col-sm-4 control-label">ID</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'id','value'=>$row->id,'class'=>'form-control'));?>
            <?php echo form_error('id');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'kategori','value'=>$row->kategori,'class'=>'form-control'));?>
            <?php echo form_error('kategori');?>
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
            <label class="col-sm-4 control-label">Seri</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'seri','value'=>$row->seri,'class'=>'form-control'));?>
            <?php echo form_error('seri');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Gambar</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'gambar','value'=>$row->gambar,'class'=>'form-control'));?>
            <?php echo form_error('gambar');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Pengoperasian</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_pengoperasian','value'=>$row->sop_pengoperasian,'class'=>'form-control'));?>
            <?php echo form_error('sop_pengoperasian');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Pemeliharaan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_pemeliharaan','value'=>$row->sop_pemeliharaan,'class'=>'form-control'));?>
            <?php echo form_error('sop_pemeliharaan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Pemeriksaan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_pemeriksaan','value'=>$row->sop_pemeriksaan,'class'=>'form-control'));?>
            <?php echo form_error('sop_pemeriksaan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Kalibrasi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_kalibrasi','value'=>$row->sop_kalibrasi,'class'=>'form-control'));?>
            <?php echo form_error('sop_kalibrasi');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">SOP Uji Fungsi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sop_uji_fungsi','value'=>$row->sop_uji_fungsi,'class'=>'form-control'));?>
            <?php echo form_error('sop_uji_fungsi');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stok</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok','value'=>$row->stok,'class'=>'form-control'));?>
            <?php echo form_error('stok');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stok Minimal</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok_minimal','value'=>$row->stok_minimal,'class'=>'form-control'));?>
            <?php echo form_error('stok_minimal');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status','value'=>$row->status,'class'=>'form-control'));?>
            <?php echo form_error('status');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/seri_alat/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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