<?php
defined('BASEPATH') OR exit('No direct script access allowed');

<<<<<<< HEAD
class Servis_alat_bahan extends CI_Controller {
=======
class servis_alat_bahan extends CI_Controller {
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_servis');
	}

	public function index()
	{
		$this->fungsi->check_previleges('servis_alat_bahan');
		$data['servis_alat_bahan'] = $this->m_servis->getData();
		$this->load->view('master/servis_alat_bahan/v_servis_alat_bahan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Inventaris Alat Bahan Yang Sudah Di Servis";
		$subheader = "servis_alat_bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/servis_alat_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/servis_alat_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('servis_alat_bahan');
<<<<<<< HEAD
		$this->load->library('servis_alat_bahan');
		$config = array(
				array(
					'field'	=> 'servis_alat_bahan',
					'label' => 'servis_alat_bahan',
=======
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'alat_bahan',
					'label' => 'alat_bahan',
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/servis_alat_bahan/v_servis_alat_bahan_add',$data);
		}
		else
		{
<<<<<<< HEAD
			$datapost = get_post_data(array('kode','alat_bahan','tgl_servis','status','keterangan','id_status'));
			$this->m_servis_->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/servis_alat_bahan","#content")');
			$this->fungsi->message_box("Data Master Servis Inventaris Alat dan Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master servis_alat_bahan dengan data sbb:",true);
=======
			$datapost = get_post_data(array('kode','alat_bahan','tgl_servis','status','keterangan'));
			$this->m_servis->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/servis_alat_bahan","#content")');
			$this->fungsi->message_box("Data Master Servis Inventaris Alat dan Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master servis alat bahan dengan data sbb:",true);
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('servis_alat_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'loss',
					'rules' => ''
				),
				array(
<<<<<<< HEAD
					'field'	=> 'servis_alat_bahan',
					'label' => 'servis_alat_bahan',
=======
					'field'	=> 'alat_bahan',
					'label' => 'alat_bahan',
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
<<<<<<< HEAD
			$data['edit'] = $this->db->get_where('servis_alat_bahan',array('id'=>$id));
=======
			$data['edit'] = $this->db->get_where('master_servis',array('id'=>$id));
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001
			$data['status']='';
			$this->load->view('master/servis_alat_bahan/v_servis_alat_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','alat_bahan','tgl_servis','status','keterangan'));
			$this->m_servis->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/servis_alat_bahan","#content")');
			$this->fungsi->message_box("Data Servis Inventaris Alat dan Bahan sukses diperbarui...","success");
<<<<<<< HEAD
			$this->fungsi->catat($datapost,"Mengedit Master servis_alat_bahan dengan data sbb:",true);
		}
	}
}
=======
			$this->fungsi->catat($datapost,"Mengedit Master servis alat bahan dengan data sbb:",true);
		}
	}
	public function delete()
    {
    $id = $this->uri->segment(4);
    $this->m_servis->deleteData($id);
    redirect('admin');
    }
}
>>>>>>> 88123d084dd4b61a211d4c69fe3a29c5abf9a001
