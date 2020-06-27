<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori_Alat extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_kategori_alat');
	}

	public function index()
	{
		$this->fungsi->check_previleges('Kategori_Alat');
		$data['Kategori_Alat'] = $this->m_kategori_alat->getData();
		$this->load->view('master/kategori_alat/v_kategori_alat_list',$data);
	}
	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Kategori Alat";
		$subheader = "Kategori_Alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/Kategori_Alat/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/Kategori_Alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}
	public function show_addForm()
	{
		$this->fungsi->check_previleges('Kategori_Alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'Kategori',
					'label' => 'Kategori',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/kategori_alat/v_kategori_alat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','Kategori','nama_alat','status'));
			$this->m_kategori_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/Kategori_Alat","#content")');
			$this->fungsi->message_box("Data Master Nama Alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master Kategori_Alat dengan data sbb:",true);
		}
	}
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('Kategori_Alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'bebas',
					'rules' => ''
				),
				array(
					'field'	=> 'Kategori',
					'label' => 'Kategori',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_kategori_alat',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/kategori_alat/v_kategori_alat_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','Kategori','nama_alat','status'));
			$this->m_kategori_alat->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/Kategori_Alat","#content")');
			$this->fungsi->message_box("Data Master Nama Kategori Alat sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master Kategori_Alat dengan data sbb:",true);
		}
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_kategori_alat->deleteData($id);
		redirect('admin');
	}
	}
