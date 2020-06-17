<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_bahan_view extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_bahan');
		$this->load->model('master/m_master_bahan');
		$this->load->model('master/m_satuan');
		$this->load->model('master/m_kategori_alat_dan_bahan');
		$this->load->model('master/m_sumber_pendanaan');
		$this->load->model('kelola/m_lokasi_penyimpanan');
	}

	public function index()
	{
		//$this->fungsi->check_previleges('kelola_bahan');
		$data['kelola_bahan'] = $this->m_kelola_bahan->getData();
		$this->load->view('kelola/kelola_bahan/kelola_bahan_view',$data);
    }
}