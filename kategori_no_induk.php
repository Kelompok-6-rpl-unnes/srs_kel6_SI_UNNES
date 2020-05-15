<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kategori_no_induk extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_kategori_no_induk');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kategori_no_induk');
		$data['kategori_no_induk'] = $this->m_kategori_no_induk->getData();
		$this->load->view('master/no_induk/v_kategori_no_induk_list',$data);
  }

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Kategori No Induk";
		$subheader = "kategori_no_induk";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/kategori_no_induk/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/kategori_no_induk/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kategori_no_induk');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'no_induk',
					'label' => 'no_induk',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/no_induk/v_kategori_no_induk_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','no_induk','nama','keterangan'));
			$this->m_kategori_no_induk->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/kategori_no_induk","#content")');
			$this->fungsi->message_box("Data Master No Induk sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master kategori_no_induk dengan data sbb:",true);
		}
	}
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kategori_no_induk');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'no_induk',
					'label' => 'no_induk',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_no_induk',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/no_induk/v_kategori_no_induk_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','no_induk','nama','keterangan'));
			$this->m_kategori_no_induk->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/kategori_no_induk","#content")');
			$this->fungsi->message_box("Data Master No Induk sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master kategori_no_induk dengan data sbb:",true);
		}
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_kategori_no_induk->deleteData($id);
		redirect('admin');
	}

	}

/* End of file nama_alat.php */
/* Location: ./application/controllers/master/nama_alat.php */
