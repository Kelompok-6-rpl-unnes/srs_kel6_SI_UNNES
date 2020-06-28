<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class validasi extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->fungsi->restrict();
        $this->load->model('kelola/m_validasi');
    }
    public function index()
	{
		$this->fungsi->check_previleges('validasi');
		$data['validasi'] = $this->m_validasi->getData();
		$this->load->view('kelola/validasi/v_validasi_list',$data);
	}

            public function validasi()
            {
                $data['validasi'] = $this->m_validasi->getData();
                $id = $this->uri->segment(4);
               // $this->m_validasi->deleteData($id);
                redirect('admin');
            }

}

/* End of file validasi.php */
/* Location: ./application/controllers/kelola/validasi.php */