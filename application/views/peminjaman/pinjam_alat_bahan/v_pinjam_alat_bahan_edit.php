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
            <label class="col-sm-4 control-label">Nama Peminjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_peminjam','value'=>$row->nama_peminjam,'class'=>'form-control'));?>
            <?php echo form_error('nama_peminjam');?>
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
            <label class="col-sm-4 control-label">Kode Alat</label>
            <div class="col-sm-8">
            <div class="form-group">
            <select class="form-control" name="kode">
            <?php foreach ($nama_alat->result() as $nama_alat): ?>
            <option value="<?= $nama_alat->id ?>" <?= $nama_alat->id == $row->kode ? "selected" : null ?>><?= $nama_alat->kode ?></option>
            <?php endforeach; ?>
            </select>
            </div>
            <?php echo form_error('kode');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
            <div class="form-group">
                <select class="form-control" name="pinjam_alat_bahan">
                <?php foreach ($kelola_alat->result() as $kelola_alat): ?>
                <option value="<?= $kelola_alat->id ?>" <?= $kelola_alat->id == $row->pinjam_alat_bahan ? "selected" : null ?>><?= $kelola_alat->nama_alat ?></option>
                <?php endforeach; ?>
                </select>
                </div>
                <?php echo form_error('pinjam_alat_bahan');?>   
                </div>
                </div>
                <div class="form-group">
            <label class="col-sm-4 control-label">Kategori Peminjaman</label>
            <select name ='kategori_pinjam'>
          <div class="col-sm-8">
          <option value ='Tugas'>Tugas</option>
          <option value ='Praktikum'>Praktikum</option>
          </select>
            <span id="check_data"></span>
            </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">jumlah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah','value'=>$row->jumlah,'class'=>'form-control'));?>
            <?php echo form_error('jumlah');?>
            <span id="check_data"></span>
            </div>
            </div>

            <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pinjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal','type'=>'date','value'=>$row->tanggal,'class'=>'form-control'));?>
            <?php echo form_error('tanggal');?>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Kembali</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_kembali','type'=>'date','value'=>$row->tgl_kembali,'class'=>'form-control'));?>
            <?php echo form_error('tgl_kembali');?>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Keperluan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keperluan','value'=>$row->keperluan,'class'=>'form-control'));?>
            <?php echo form_error('keperluan');?>
            <span id="check_data"></span>
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