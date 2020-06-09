<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Servis_inven_alat_bahan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_servis_inven_alat_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('servis_inven_alat_bahan');
		$data['servis_inven_alat_bahan'] = $this->m_servis_inven_alat_bahan->getData();
		$this->load->view('master/servis_inven_alat_bahan/v_servis_inven_alat_bahan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Inventaris Alat Bahan Yang Suddah Di Servis";
		$subheader = "servis_inven_alat_bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/servis_inven_alat_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/servis_inven_alat_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('servis_inven_alat_bahan');
		$this->load->library('servis_inven_alat_bahan');
		$config = array(
				array(
					'field'	=> 'servis_inven_alat_bahan',
					'label' => 'servis_inven_alat_bahan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/servis_inven_alat_bahan/v_servis_inven_alat_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('kode','alat_bahan','tgl_servis','keterangan','id_status'));
			$this->m_servis_inven_alat_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/servis_inven_alat_bahan","#content")');
			$this->fungsi->message_box("Data Master Servis Inventaris Alat dan Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master servis_inven_alat_bahan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('servis_inven_alat_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'loss',
					'rules' => ''
				),
				array(
					'field'	=> 'servis_inven_alat_bahan',
					'label' => 'servis_inven_alat_bahan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('servis_inven_alat_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/servis_inven_alat_bahan/v_servis_inven_alat_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','alat_bahan','tgl_servis','keterangan','id_status'));
			$this->m_servis_inven_alat_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/servis_inven_alat_bahan","#content")');
			$this->fungsi->message_box("Data Servis Inventaris Alat dan Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master servis_inven_alat_bahan dengan data sbb:",true);
		}
	}
}