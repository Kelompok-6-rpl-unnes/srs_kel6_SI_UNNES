<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class satuan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_tipe_lab');
	}

	public function index()
	{
		$this->fungsi->check_previleges('tipe_lab');
		$data['satuan'] = $this->m_satuan->getData();
		$this->load->view('master/tipe_lab/v_tipe_lab_list',$data);
    }
}