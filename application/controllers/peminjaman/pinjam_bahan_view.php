<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class pinjam_bahan_view extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_pinjam_bahan');
        $this->load->model('master/m_inven');
        $this->load->model('master/m_master_bahan');
	}

	public function index()
	{
		//$this->fungsi->check_previleges('pinjam_bahan');
		$data['pinjam_bahan'] = $this->m_pinjam_bahan->join();
		$this->load->view('peminjaman/pinjam_bahan/v_pinjam_bahan_view',$data);
    }
}