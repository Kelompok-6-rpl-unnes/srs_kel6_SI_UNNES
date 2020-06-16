<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_bahan extends CI_Model
{
    public function getData()
    {
        $this->db->select('kelola_bahan.*, master_bahan.nama_bahan, master_satuan.Nama, master_kategori_alat_dan_bahan.Kategori, master_sumber_pendanaan.sumber_pendanaan, lokasi_penyimpanan.nama_lokasi_penyimpanan');
		$this->db->from('kelola_bahan');
		$this->db->join('master_bahan', 'master_bahan.id = kelola_bahan.nama_bahan');
		$this->db->join('master_satuan', 'master_satuan.id = kelola_bahan.nama_satuan');
		$this->db->join('master_kategori_alat_dan_bahan', 'master_kategori_alat_dan_bahan.id = kelola_bahan.kategori');
		$this->db->join('master_sumber_pendanaan', 'master_sumber_pendanaan.id = kelola_bahan.pendanaan');
		$this->db->join('lokasi_penyimpanan', 'lokasi_penyimpanan.id = kelola_bahan.lokasi');
		return $this->db->get();
    }

    public function insertData($data)
    {
        $this->db->insert('kelola_bahan',$data);
    }

    public function updateData($data)
    {
        $this->db->where('id',$data['id']);
        $this->db->update('kelola_bahan',$data);
    }
}