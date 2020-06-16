<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pinjam_alat_bahan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('peminjaman/m_pinjam_alat_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('pinjam_alat_bahan');
		$data['pinjam_alat_bahan'] = $this->m_pinjam_alat_bahan->getData();
		$this->load->view('peminjaman/pinjam_alat_bahan/v_pinjam_alat_bahan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Peminjaman Alat dan Bahan";
		$subheader = "pinjam_alat_bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("peminjaman/pinjam_alat_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("peminjaman/pinjam_alat_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('pinjam_alat_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'pesan_alat_bahan',
					'label' => 'pesan_alat_bahan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('peminjaman/pinjam_alat_bahan/v_pinjam_alat_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('kode','pesan_alat_bahan','jumlah','tanggal','keterangan'));
			$this->m_pinjam_alat_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/pinjam_alat_bahan","#content")');
			$this->fungsi->message_box("Data Peminjaman Alat dan Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Peminjaman Alat Dan Bahan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('pinjam_alat_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'rules' => ''
				),
				array(
					'field'	=> 'pesan_alat_bahan',
					'label' => 'pesan_alat_bahan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('pinjam_alat_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('peminjaman/pinjam_alat_bahan/v_pinjam_alat_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','pesan_alat_bahan','jumlah','tanggal','keterangan'));
			$this->m_pinjam_alat_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/pinjam_alat_bahan","#content")');
			$this->fungsi->message_box("Data Peminjaman Alat dan Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Peminjaman Alat Dan Bahan dengan data sbb:",true);
		}
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_pinjam_alat_bahan->deleteData($id);
		redirect('admin');
	}
	}

/* End of file pinjam_alat_bahan.php */
/* Location: ./application/controllers/peminjaman/pinjam_alat_bahan.php */