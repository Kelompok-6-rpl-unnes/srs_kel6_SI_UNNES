<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class jatuh_tempo extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_inven');
		$this->load->model('master/m_kelola_alat');
		$this->load->model('kelola/m_kelola_bahan');
		$this->load->model('peminjaman/m_buat_peminjaman');
	}

	public function index()
	{
		//$this->fungsi->check_previleges('jatuh_tempo');
		$data['jatuh_tempo'] = $this->m_buat_peminjaman->jatuh_tempo();
		$data['hitung'] = $this->m_buat_peminjaman->hitung();
		$this->load->view('master/jatuh_tempo/v_jatuh_tempo_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Jatuh Tempo";
		$subheader = "jatuh_tempo"; //check kelolanya
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/jatuh_tempo/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/jatuh_tempo/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	

	public function show_editForm($id='')
	{
		//$this->fungsi->check_previleges('kelola_alat');
		$this->load->library('form_validation');
		$config = array(
			
			array(
				'field'	=> 'nama_alat',
				'label' => 'nama_alat',
				'rules' => 'required'
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
			$data = [
				'edit' => $this->db->get_where('peminjaman',array('id'=>$id)),
				'kode' => $this->m_inven->getData(),
                'bahan' => $this->m_kelola_bahan->getData(),
                'alat' => $this->m_kelola_alat->join(),
                
            ];

			$this->load->view('master/jatuh_tempo/v_jatuh_tempo_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode_peminjaman','nama_peminjaman','kode','nama_alat','nama_bahan','tgl_pinjam','tanggal_kembali','status_pengembalian'));
			$this->m_buat_peminjaman->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/jatuh_tempo","#content")');
			$this->fungsi->message_box("Data Peminjaman sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit jatuh_tempo dengan data sbb:",true);
		}
	}

	public function view_print($id='')
	{
		//$this->fungsi->check_previleges('jatuh_tempo');
		$data['id'] = $this->m_jatuh_tempo->getData();
		$this->load->view('master/jatuh_tempo/v_jatuh_tempo_print',$data);
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_jatuh_tempo->deleteData($id);
		redirect('admin');
	}
}

/* End of file jatuh_tempo.php */
/* Location: ./application/controllers/master/jatuh_tempo.php */
			
			