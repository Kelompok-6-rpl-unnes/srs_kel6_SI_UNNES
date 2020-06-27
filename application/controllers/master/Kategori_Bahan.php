<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori_Bahan extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_kategori_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('Kategori_Bahan');
		$data['Kategori_Bahan'] = $this->m_kategori_bahan->getData();
		$this->load->view('master/kategori_bahan/v_kategori_bahan_list',$data);
	}
	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Kategori Bahan";
		$subheader = "Kategori_Bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/Kategori_Bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/Kategori_Bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}
	public function show_addForm()
	{
		$this->fungsi->check_previleges('Kategori_Bahan');
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
			$this->load->view('master/kategori_bahan/v_kategori_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','Kategori','nama_bahan','status'));
			$this->m_kategori_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/Kategori_Bahan","#content")');
			$this->fungsi->message_box("Data Master Nama Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master Kategori_Bahan dengan data sbb:",true);
		}
	}
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('Kategori_Bahan');
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
			$data['edit'] = $this->db->get_where('master_kategori_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/kategori_bahan/v_kategori_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','Kategori','nama_bahan','status'));
			$this->m_kategori_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/Kategori_Bahan","#content")');
			$this->fungsi->message_box("Data Master Nama Kategori Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master Kategori_Bahan dengan data sbb:",true);
		}
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_kategori_bahan->deleteData($id);
		redirect('admin');
	}
	}
