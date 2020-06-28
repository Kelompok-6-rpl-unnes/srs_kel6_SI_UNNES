<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class jatuh_tempo extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_jatuh_tempo');
	}

	public function index()
	{
		$this->fungsi->check_previleges('jatuh_tempo');
		$data['jatuh_tempo'] = $this->m_jatuh_tempo->getData();
		$this->load->view('master/jatuh_tempo/v_jatuh_tempo_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Jatuh Tempo";
		$subheader = "jatuh_tempo";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/jatuh_tempo/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/jatuh_tempo/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('jatuh_tempo');
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
			$this->load->view('master/jatuh_tempo/v_jatuh_tempo_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id_peminjaman','nama_peminjam','nomor_induk','status_user','kategori_peminjaman','tanggal_pinjam','tanggal_kembali','status_peminjaman','status'));
			$this->m_jatuh_tempo->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/jatuh_tempo","#content")');
			$this->fungsi->message_box("Data Jatuh Tempo sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah Jatuh Tempo dengan data sbb:",true);
        }
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('jatuh_tempo');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'rules' => ''
				),
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
			$data['edit'] = $this->db->get_where('jatuh_tempo',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/jatuh_tempo/v_jatuh_tempo_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_peminjaman','nama_peminjam','nomor_induk','status_user','kategori_peminjaman','tanggal_pinjam','tanggal_kembali','status_peminjaman','status'));
			$this->m_jatuh_tempo->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/jatuh_tempo","#content")');
			$this->fungsi->message_box("Data Jatuh Tempo sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit Jatuh Tempo dengan data sbb:",true);   
        }  
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_jatuh_tempo->deleteData($id);
		redirect('admin');
	}
	public function view_print($id='')
	{
		//$this->fungsi->check_previleges('jatuh_tempo');
		$data['id'] = $this->m_jatuh_tempo->getData();
		$this->load->view('master/jatuh_tempo/v_jatuh_tempo_print',$data);
	}

}

/* End of file jatuh_tempo.php */
/* Location: ./application/controllers/master/jatuh_tempo.php */