<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_user_view extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('cms/m_user');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_user');
		$data['user'] = $this->m_user->getList();
		$this->load->view('cms/user/v_user_view',$data);
	}
}