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
    
	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Validasi";
		$subheader = "validasi";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/validasin/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/validasi/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
    }
    public function show_addForm()
	{
		$this->fungsi->check_previleges('validasi');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nomor_induk_mahasiswa',
					'label' => 'nomor_induk_mahasiswa',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('kelola/validasi/v_validasi_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nomor_induk_mahasiswa','nama_lengkap','tanggal','prodi','mata_kuliah','rombel','keterangan','status'));
			$this->m_validasi->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/validasi","#content")');
			$this->fungsi->message_box("Data Validasi sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Validasi dengan data sbb:",true);
		}
	}
        public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('validasi');
		$this->load->library('form_validation');
		$config = array(
            array(
                'field'	=> 'id',
                'label' => 'bebas',
                'rules' => ''
            ),
					'field'	=> 'status',
					'label' => 'status',
                    'rules' => 'required'
        )
        );
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('validasi',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/validasi/v_validasi_edit',$data);
        }
        
        else
		{
			$datapost = get_post_data(array('status'));
			$this->m_validasi->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/validasi","#content")');
			$this->fungsi->message_box("Validasi Sukses...","success");
            $this->fungsi->catat($datapost,"Mengedit Validasi Sukses dengan data sbb:",true);
        }
        
    }
    
}

/* End of file validasi.php */
/* Location: ./application/controllers/kelola/validasi.php */