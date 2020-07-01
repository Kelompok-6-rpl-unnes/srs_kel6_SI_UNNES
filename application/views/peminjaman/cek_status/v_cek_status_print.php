<div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
            <div class="cel head-title">
                <h3>Status Peminjaman</h3>
                    <div>
                    <td>Universitas Negeri Semarang</td>
                    </div>
                    <div>
                    <td>Semarang</td>
                    </div>
                    <div>
                    <td>NO.Telp 08983924536</td>
                    </div>
            </div>

          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
              <th>No</th>
                <th>ID Peminjaman</th>
                <th>Nama Peminjaman</th>
                <th>Kode</th>
                <th>Nama Alat</th>
                <th>Nama Bahan</th>
                <th>Jumlah</th>
                <th>Tanggal Pinjam</th>
                <th>Tanggal kembali</th>
                <th>Status</th>
                <th>Act</th>
                <th></th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($cek_status->result() as $row): ?>
          <tr>
          <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->kode_peminjaman?></td>
            <td align="center"><?=$row->nama_peminjaman?></td>
            <td align="center"><?=$row->kode?></td>
            <td align="center"><?=$row->nama_alat?></td>
            <td align="center"><?=$row->nama_bahan?></td>
            <td align="center"><?=$row->jumlah?></td>
            <td align="center"><?=$row->tgl_pinjam?></td>
            <td align="center"><?=$row->tanggal_kembali?></td>
            <td align="center"><span class="badge bg-green"><?=$row->status?></td>
            <td align="center">

            </td>
          </tr>
        <?php endforeach;?>
        </tbody>
        </table>
      </div>
      </div>
    </div>
    <div class="cel head-title">
                <h5>Terima Kasih Meminjam Alat Di Lab</h5>
    </div>
  <div>
</div>
<script type="text/javascript"> window.print(); 
</script>