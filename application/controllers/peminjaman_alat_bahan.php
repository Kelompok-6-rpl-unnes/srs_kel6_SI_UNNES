<?php 
class peminjaman_alat_bahan extends CI_Controller {
    public function __construct()
    {
        parent:: __construct();
        $this->load->model('peminjaman_alat_bahan');
    }
    public function index()
    {
        $data('graph') = $this->peminjaman_alat_bahan->graph();
        $this->load->view('chart', $data);
    }
}