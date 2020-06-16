<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_alat_view extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_kelola_alat');
		$this->load->model('master/m_nama_alat');
		$this->load->model('master/m_satuan');
		$this->load->model('master/m_kategori_alat_dan_bahan');
		$this->load->model('master/m_sumber_pendanaan');
		$this->load->model('kelola/m_lokasi_penyimpanan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_alat');
		$data['kelola_alat'] = $this->m_kelola_alat->join();
		$this->load->view('master/kelola_alat/v_kelola_alat_view',$data);
    }
}