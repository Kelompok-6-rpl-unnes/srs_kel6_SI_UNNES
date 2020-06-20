<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_bahan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_bahan');
		$this->load->model('master/m_master_bahan');
		$this->load->model('master/m_satuan');
		$this->load->model('master/m_kategori_alat_dan_bahan');
		$this->load->model('master/m_sumber_pendanaan');
		$this->load->model('kelola/m_lokasi_penyimpanan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_bahan');
		$data['kelola_bahan'] = $this->m_kelola_bahan->getData();
		$this->load->view('kelola/kelola_bahan/kelola_bahan_list',$data);
	}
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Bahan";
		$subheader = "kelola_bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kelola_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_bahan',
					'label' => 'nama_bahan',
					'rules' => 'required'
                ),
                array(
					'field'	=> 'nama_satuan',
					'label' => 'nama_satuan',
                    'rules' => 'required'
                )
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['nama_bahan'] = $this->m_master_bahan->getData();
			$data['Nama'] = $this->m_satuan->getData();
			$data['Kategori'] = $this->m_kategori_alat_dan_bahan->getData();
			$data['sumber_pendanaan'] = $this->m_sumber_pendanaan->getData();
			$data['nama_lokasi_penyimpanan'] = $this->m_lokasi_penyimpanan->getData();
			$this->load->view('kelola/kelola_bahan/kelola_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_bahan','nama_satuan','kategori', 'merk', 'pendanaan', 'stok', 'lokasi', 'kondisi', 'status',));
			$this->m_kelola_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_bahan","#content")');
			$this->fungsi->message_box("Data Kelola Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola kelola_bahan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_bahan');
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
            ),
		);
	$this->form_validation->set_rules($config);
	$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_bahan',array('id'=>$id));
			$data['nama_bahan'] = $this->m_master_bahan->getData();
			$data['Nama'] = $this->m_satuan->getData();
			$data['Kategori'] = $this->m_kategori_alat_dan_bahan->getData();
			$data['sumber_pendanaan'] = $this->m_sumber_pendanaan->getData();
			$data['lokasi'] = $this->m_lokasi_penyimpanan->getData();
			$this->load->view('kelola/kelola_bahan/kelola_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_bahan','nama_satuan','kategori', 'merk','pendanaan', 'stok', 'lokasi', 'kondisi', 'status',));
			$this->m_kelola_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_bahan","#content")');
			$this->fungsi->message_box("Data Kelola Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola Bahan dengan data sbb:",true);
		}
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_kelola_bahan->deleteData($id);
		redirect('admin');
	}
}
/* End of file kelola_bahan.php */
/* Location: ./application/controllers/kelola/kelola_bahan.php */