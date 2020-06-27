<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class pinjam_alat_bahan_view extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_pinjam_alat_bahan');
        $this->load->model('master/m_nama_alat');
        $this->load->model('master/m_kelola_alat');
	}

	public function index()
	{
		//$this->fungsi->check_previleges('pinjam_alat_bahan');
		$data['pinjam_alat_bahan'] = $this->m_pinjam_alat_bahan->join();
		$this->load->view('peminjaman/pinjam_alat_bahan/v_pinjam_alat_bahan_view',$data);
    }
}