<?php
class peminjaman_alat_bahan extends CI_Model {
    public function __construct()
    {
        $this->load->database();
    }
    public function graph()
    {
        $data = $this->db->querry("SELECT * from pinjam_alat_bahan");
        return $data->result();
    }
}