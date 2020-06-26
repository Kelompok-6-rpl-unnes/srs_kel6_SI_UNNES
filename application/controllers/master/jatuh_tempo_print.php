<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class jatuh_tempo_print extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_jatuh_tempo');
	}

	public function index()
	{
		$this->fungsi->check_previleges('jatuh_tempo');
		$data['jatuh_tempo'] = $this->m_jatuh_tempo->getData();
		$this->load->view('master/jatuh_tempo/v_jatuh_tempo_print',$data);
	}