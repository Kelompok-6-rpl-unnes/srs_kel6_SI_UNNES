<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_lab_view extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->fungsi->restrict();
        $this->load->model('kelola/m_kelola_lab');
    }
    public function index()
	{
		$this->fungsi->check_previleges('kelola_lab');
		$data['kelola_lab'] = $this->m_kelola_lab->getData();
		$this->load->view('kelola/kelola_lab/v_kelola_lab_view',$data);
    }
}