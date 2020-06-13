<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="col-lg-12">
        <div class="box box-primary">
            <div class="box-header with-border">
            <h3 class="box-title">Pengelolaan Bahan Laboratorium Siladu</h3>

            <div class="box-tools pull-right">
            <?php
                $sesi = from_session('level');
                if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/kelola_bahan/form/base","#modal")','Tambah kelola bahan','btn btn-success');
                } else {
                # code...
                }
                ?>
            </div>
            </div>
            <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
                <thead>
                    <th>No</th>
                    <th>Nama Bahan</th>
                    <th>Nama Satuan</th>
                    <th>Kategori</th>
                    <th>Stock</th>
                    <th>Stock Minimal</th>
                    <th>Lokasi</th>
                    <th>Pendanaan</th>
                    <th>Harga</th>
                    <th>Kondisi</th>
                    <th>Act</th>
                </thead>
                <tbody>
                <?php 
                $i = 1;
                foreach($kelola_bahan->result() as $row):?>
                    <tr>
                        <td align="center"><?=$i++?></td>
                        <td align="center"><?=$row->nama_bahan?></td>
                        <td align="center"><?=$row->nama_satuan?></td>
                        <td align="center"><?=$row->kategori_alat_bahan?></td>
                        <td align="center"><?=$row->stock?></td>
                        <td align="center"><?=$row->stock_minimal?></td>
                        <td align="center"><?=$row->Nama_penyimpanan?></td>
                        <td align="center"><?=$row->sumber_pendanaan?></td>
                        <td align="center"><?=$row->harga?></td>
                        <td align="center"><?=$row->kondisi?></td>
                        <td align="center">
                        <?php
                        $sesi = from_session('level');
                        if ($sesi == '1' || $sesi == '4') {
                            echo button('load_silent("kelola/kelola_bahan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
                        } else {
                            # code...
                        }
                        ?>
                        
                        <?php echo button('load_silent("kelola/kelola_bahan/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?>
                        </td>
                    </tr>
                <?php endforeach;?>
                </tbody>
            </table>
            </div>
            </div>
        </div>
    </div>