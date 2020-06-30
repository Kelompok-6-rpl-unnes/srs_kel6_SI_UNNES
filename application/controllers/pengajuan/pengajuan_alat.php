<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class pengajuan_alat extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('pengajuan/m_pengajuan_alat');
		$this->load->model('master/m_nama_alat');
		$this->load->model('master/m_kelola_alat');
		$this->load->model('kelola/m_kelola_lab');
		$this->load->model('pengajuan/m_periode_pengajuan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$data['pengajuan_alat'] = $this->m_pengajuan_alat->getData();
		$this->load->view('pengajuan/pengajuan_alat/v_pengajuan_alat_list',$data);
	}
	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Pengajuan Alat";
		$subheader = "pengajuan_alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}
	public function show_addForm()
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'pengajuan_alat',
					'label' => 'pengajuan_alat',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data = [
				'nama_alat' => $this->m_nama_alat->getData(),
                'kelola_alat' => $this->m_kelola_alat->getData(),
                'kelola_lab' => $this->m_kelola_lab->getData(),
                'periode_pengajuan' =>$this->m_periode_pengajuan->getData(),
                
            ];
			// $data['status']='';
			$this->load->view('pengajuan/pengajuan_alat/v_pengajuan_alat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','pengajuan_alat','no_induk','nama_alat','seri','merk','satuan_grosir','jumlah_grosir','harga_grosir','estimasi_jumlah','harga_dasar','nama_lab','status'));
			$this->m_pengajuan_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat","#content")');
			$this->fungsi->message_box("Data Periode Pengajuan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah pengajuan_alat dengan data sbb:",true);
		}
	}
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'bebas',
					'rules' => ''
				),
				array(
					'field'	=> 'pengajuan_alat',
					'label' => 'pengajuan_alat',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('pengajuan_alat',array('id'=>$id));
			$data['periode_pengajuan']=$this->m_periode_pengajuan->getData();
			$data['nama_alat']=$this->m_nama_alat->getData();
			$data['kelola_alat']=$this->m_kelola_alat->getData();
			$data['kelola_lab']=$this->m_kelola_lab->getData();
			$this->load->view('pengajuan/pengajuan_alat/v_pengajuan_alat_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','pengajuan_alat','no_induk','nama_alat','seri','merk','satuan_grosir','jumlah_grosir','harga_grosir','estimasi_jumlah','harga_dasar','nama_lab','status'));
			$this->m_pengajuan_alat->updateData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat","#content")');
			$this->fungsi->message_box("Data Pengajuan Alat sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit pengajuan_alat dengan data sbb:",true);
		}
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_pengajuan_alat->deleteData($id);
		redirect('admin');
	}
	}