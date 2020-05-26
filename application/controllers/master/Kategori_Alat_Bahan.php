<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori_Alat_Bahan extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_kategori_alat_dan_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('Kategori_Alat_Bahan');
		$data['Kategori_Alat_Bahan'] = $this->m_kategori_alat_dan_bahan->getData();
		$this->load->view('master/kategori_alat_bahan/v_kategori_alat_dan_bahan_list',$data);
	}
	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Kategori Alat dan Bahan";
		$subheader = "Kategori_Alat_Bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/Kategori_Alat_Bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/Kategori_Alat_Bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}
	public function show_addForm()
	{
		$this->fungsi->check_previleges('Kategori_Alat_Bahan');
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
			$this->load->view('master/kategori_alat_bahan/v_kategori_alat_dan_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','Kategori','Keterangan'));
			$this->m_kategori_alat_dan_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/Kategori_Alat_Bahan","#content")');
			$this->fungsi->message_box("Data Master Nama Alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master Kategori_Alat_Bahan dengan data sbb:",true);
		}
	}
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('Kategori_Alat_Bahan');
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
			$data['edit'] = $this->db->get_where('master_kategori_alat_dan_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/kategori_alat_bahan/v_kategori_alat_dan_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','Kategori','Keterangan','id_status'));
			$this->m_kategori_alat_dan_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/Kategori_Alat_Bahan","#content")');
			$this->fungsi->message_box("Data Master Nama Kategori Alat dan Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master Kategori_Alat_Bahan dengan data sbb:",true);
		}
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_kategori_alat_dan_bahan->deleteData($id);
		redirect('admin');
	}
	}
