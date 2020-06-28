<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class cek_status extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('peminjaman/m_cek_status');
	}

	public function index()
	{
		$this->fungsi->check_previleges('cek_status');
		$data['cek_status'] = $this->m_cek_status->getData();
		$this->load->view('peminjaman/cek_status/v_cek_status_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Cek Status";
		$subheader = "cek_status";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("peminjaman/cek_status/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("peminjaman/cek_status/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('cek_status');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id_peminjaman',
					'label' => 'id_peminjaman',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('peminjaman/cek_status/v_cek_status_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id_peminjaman','kategori_peminjaman','tanggal_peminjaman','tanggal_kembali','status_peminjaman','status'));
			$this->m_cek_status->insertData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/cek_status","#content")');
			$this->fungsi->message_box("Data Peminjaman disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah Data Peminjaman dengan data sbb:",true);
        }
	}
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('cek_status');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'status_peminjaman',
					'label' => 'status_peminjaman',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');
		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('cek_status',array('id'=>$id));
			$data['status']='';
			$this->load->view('peminjaman/cek_status/v_cek_status_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','status_peminjaman'));
			$this->m_cek_status->updateData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/cek_status","#content")');
			$this->fungsi->message_box("Data Cek Status Peminjaman Alat dan Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Cek Status Peminjaman Alat Dan Bahan dengan data sbb:",true);
		}
	}
	public function view_print($id='')
	{
		//$this->fungsi->check_previleges('cek_status');
		$data['id'] = $this->m_cek_status->getData();
		$this->load->view('peminjaman/cek_status/v_cek_status_print',$data);
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_cek_status->deleteData($id);
		redirect('admin');
	}
}

/* End of file cek_status.php */
/* Location: ./application/controllers/peminjaman/cek_status.php */