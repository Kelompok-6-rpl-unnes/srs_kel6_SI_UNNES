<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_bahan extends CI_Controller {

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
        $this->load->view('kelola/kelola_bahan/kelola_bahan_list', $data);
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
		}
		else{
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
					'label' => 'nama_alat',
					'rules' => 'required'
                ),
                array(
					'field'	=> 'satuan_bahan',
					'label' => 'satuan_alat',
                    'rules' => 'required'
                )
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['nama_bahan'] = $this->m_master_bahan->getData();
			$data['satuan'] = $this->m_satuan->getData();
			$data['kategori'] = $this->m_kategori_alat_dan_bahan->getData();
			$data['dana'] = $this->m_sumber_pendanaan->getData();
			$data['lokasi'] = $this->m_kelola_penyimpanan->getData();
			// $data['status']='';
			$this->load->view('kelola/kelola_bahan/kelola_bahan_add',$data);
		}
		else
		{
			$datapost = [
                'id' => '',
                'nama_bahan' => $this->input->post('nama_bahan'),
                'satuan_bahan' => $this->input->post('satuan_bahan'),
                'kategori' => $this->input->post('kategori'),
                'stock' => $this->input->post('stock'),
                'stock_minimal' => $this->input->post('stock_minimal'),
                'lokasi' => $this->input->post('lokasi'),
                'pendanaan' => $this->input->post('pendanaan'),
                'harga' => $this->input->post('harga'),
                'kondisi' => $this->input->post('kondisi')
            ];

            $this->db->insert('kelola_bahan', $datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_bahan","#content")');
			$this->fungsi->message_box("Data Kelola Nama Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola kelola_bahan dengan data sbb:",true);
		}
    }

    public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_bahan');
		$this->load->library('form_validation');
		$config = array(
			array(
				'field'	=> 'nama_bahan',
				'label' => 'nama_alat',
				'rules' => 'required'
            ),
            array(
				'field'	=> 'satuan_bahan',
				'label' => 'satuan_bahan',
				'rules' => 'required'
			)
		);

	    $this->form_validation->set_rules($config);
	    $this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_bahan',array('id'=>$id));
			$data['nama_bahan'] = $this->m_master_bahan->getData();
			$data['satuan'] = $this->m_satuan->getData();
			$data['kategori'] = $this->m_kategori_alat_dan_bahan->getData();
            $data['dana'] = $this->m_sumber_pendanaan->getData();
			$data['lokasi'] = $this->m_kelola_penyimpanan->getData();

			$this->load->view('kelola/kelola_bahan/kelola_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_bahan','satuan_bahan','kategori', 'stock', 'stock_minimal', 'lokasi', 'pendanaan', 'harga', 'kondisi'));
			$this->m_kelola_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_bahan","#content")');
			$this->fungsi->message_box("Data Kelola Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola kelola_alat dengan data sbb:",true);
		}
	}

    public function delete()
    {
        $this->fungsi->check_previleges('kelola_bahan');
		if($id == '' || !is_numeric($id)) die;
		$this->m_kelola_alat->deleteData($id);
		$this->fungsi->run_js('load_silent("kelola/kelola_bahan","#content")');
		$this->fungsi->message_box("Data Kelola Bahan Berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
    }
}