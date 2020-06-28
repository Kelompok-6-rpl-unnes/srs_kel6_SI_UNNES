<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class pengajuan_bahan extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('pengajuan/m_pengajuan_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('pengajuan_bahan');
		$data['pengajuan_bahan'] = $this->m_pengajuan_bahan->getData();
		$this->load->view('pengajuan/pengajuan_bahan/v_pengajuan_bahan_list',$data);
	}
	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Pengajuan Bahan";
		$subheader = "pengajuan_bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}
	public function show_addForm()
	{
		$this->fungsi->check_previleges('pengajuan_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_bahan',
					'label' => 'nama_bahan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('pengajuan/pengajuan_bahan/v_pengajuan_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','periode','nama_bahan','seri','merk','satuan_grosir','jumlah_grosir','harga_grosir','estimasi_grosir','harga_dasar','nama_lab','status'));
			$this->m_pengajuan_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan","#content")');
			$this->fungsi->message_box("Data Pengajuan Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah pengajuan_bahan dengan data sbb:",true);
		}
	}
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('pengajuan_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_bahan',
					'label' => 'nama_bahan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('pengajuan_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('pengajuan/pengajuan_bahan/v_pengajuan_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','periode','nama_bahan','seri','merk','satuan_grosir','jumlah_grosir','harga_grosir','estimasi_jumlah','harga_dasar','nama_lab','status'));
			$this->m_pengajuan_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan","#content")');
			$this->fungsi->message_box("Data Pengajuan Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit pengajuan_bahan dengan data sbb:",true);
		}
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_pengajuan_bahan->deleteData($id);
		redirect('admin');
	}
}

/* End of file pengajuan_bahan.php */
/* Location: ./application/controllers/pengajuan/pengajuan_bahan.php */