<div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
            <div class="cel head-title">
                <h3>Jatuh Tempo Peminjaman</h3>
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
                <th>Nama Peminjam</th>
                <th>Nomor Induk</th>
                <th>Status User</th>
                <th>Kategori Peminjaman</th>
                <th>Tanggal Pinjam</th>
                <th>Tanggal Kembali</th>
                <th>Status Peminjaman</th>
                <th>Status</th>
                <th>Act</th>
                <th></th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($id->result() as $row): ?>
          <tr>
          <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id_peminjaman?></td>
            <td align="center"><?=$row->nama_peminjam?></td>
            <td align="center"><?=$row->nomor_induk?></td>
            <td align="center"><?=$row->status_user?></td>
            <td align="center"><?=$row->kategori_peminjaman?></td>
            <td align="center"><?=$row->tanggal_pinjam?></td>
            <td align="center"><?=$row->tanggal_kembali?></td>
            <td align="center"><?=$row->status_peminjaman?></td>
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
                <h5>Jatuh Tempo Meminjam Alat Di Lab</h5>
    </div>
  <div>
</div>
<script type="text/javascript"> window.print(); 
</script>