<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class buat_pengajuan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_alat');
		$this->load->model('kelola/m_kelola_bahan');
        $this->load->model('pengajuan/m_buat_pengajuan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('buat_pengajuan');
		$data = [
            'pengajuan' => $this->m_buat_pengajuan->getData(),
        ];
		$this->load->view('pengajuan/buat_pengajuan/v_buat_pengajuan_alat_list',$data);
	}


    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Pengajuan";
		$subheader = "buat pengajuan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("pengajuan/buat_pengajuan/show_addForm/","#divsubcontent")');	
		}
		else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("pengajuan/buat_pengajuan/show_editForm/'.$base_kom.'","#divsubcontent")');	
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
					'field'	=> 'nama_alat',
					'label' => 'nama_alat',
                    'rules' => 'required'
                )
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data = [
                'bahan' => $this->m_kelola_bahan->getData(),
                'alat' => $this->m_kelola_alat->join(),
                'kode_pengajuan' =>$this->m_buat_pengajuan->kode_peminjaman(),
                
            ];
			// $data['status']='';
			$this->load->view('pengajuan/buat_pengajuan/v_buat_pengajuan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode_pengajuan','nama_bahan','nama_alat','pengaju','tgl_pengajuan'));
            $this->m_buat_pengajuan->insertData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/buat_pengajuan","#content")');
			$this->fungsi->message_box("Data Pengajuan Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Pengajuan kelola_bahan dengan data sbb:",true);
		}
    }

    public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_alat');
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
                'edit' => $this->db->get_where('pengajuan',array('id'=>$id)),
                'bahan' => $this->m_kelola_bahan->getData(),
                'alat' => $this->m_kelola_alat->join(),
                
            ];

			$this->load->view('pengajuan/buat_pengajuan/v_buat_pengajuan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode_pengajuan','nama_bahan','nama_alat','pengaju','tgl_pengajuan'));
			$this->m_buat_pengajuan->updateData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/buat_pengajuan","#content")');
			$this->fungsi->message_box("Data Pengajuan alat sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit pengajuan kelola_alat dengan data sbb:",true);
		}
	}

    public function delete($id)
    {
        
		if($id == '' || !is_numeric($id)) die;
		$this->m_buat_pengajuan->deleteData($id);
		$this->fungsi->run_js('load_silent("pengajuan/buat_pengajuan","#content")');
		$this->fungsi->message_box("Data Pengajuan Berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
    
    }

}