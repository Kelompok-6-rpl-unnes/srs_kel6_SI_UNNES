<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nomor Induk Mahasiswa</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'nomor_induk_mahasiswa','value'=>$row->nomor_induk_mahasiswa,'class'=>'form-control'));?>
            <?php echo form_error('nomor_induk_mahasiswa');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Lengkap</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_lengkap','value'=>$row->nama_lengkap,'class'=>'form-control'));?>
            <?php echo form_error('nama_lengkap');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal','type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tanggal');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <input type="radio" name="keterangan" value="Masuk">Masuk<br/>
            <div class="col-sm-8">
            </div> 
           <input type="radio" name="keterangan" value="Tidak Masuk">Tidak Masuk<br/> 
           <div class="col-sm-4">
           </div>
            <input type="radio" name="keterangan" value="Ijin">Ijin<br/>
            <div class="col-sm-8">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah Kehadiran</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah_kehadiran','value'=>$row->jumlah_kehadiran,'class'=>'form-control'));?>
            <?php echo form_error('jumlah_kehadiran');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Prodi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'prodi','value'=>$row->prodi,'class'=>'form-control'));?>
            <?php echo form_error('prodi');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Mata Kuliah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'mata_kuliah','value'=>$row->mata_kuliah,'class'=>'form-control'));?>
            <?php echo form_error('mata_kuliah');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Rombel</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'rombel','value'=>$row->rombel,'class'=>'form-control'));?>
            <?php echo form_error('rombel');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/absen_mahasiswa/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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