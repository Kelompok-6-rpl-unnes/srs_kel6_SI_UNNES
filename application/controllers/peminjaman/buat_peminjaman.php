<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class buat_peminjaman extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('peminjaman/m_buat_peminjaman');
		$this->load->model('master/m_inven');
		$this->load->model('master/m_kelola_alat');
		$this->load->model('kelola/m_kelola_bahan');
		$this->load->model('peminjaman/m_buat_peminjaman');
		$this->load->model('peminjaman/m_cek_status');
	}

	public function index()
	{
		//$this->fungsi->check_previleges('buat_peminjaman');
		$data = [
            'peminjaman' => $this->m_buat_peminjaman->getData(),
        ];
		$this->load->view('peminjaman/buat_peminjaman/v_buat_peminjaman_alat_list',$data);
	}
	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Peminjaman";
		$subheader = "buat peminjaman";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("peminjaman/buat_peminjaman/show_addForm/","#divsubcontent")');	
		}
		else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("peminjaman/buat_peminjaman/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

    public function show_addForm()
	{
		//$this->fungsi->check_previleges('buat_peminjaman');
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
				'kode' => $this->m_inven->getData(),
                'bahan' => $this->m_kelola_bahan->getData(),
                'alat' => $this->m_kelola_alat->join(),
                'kode_peminjaman' =>$this->m_buat_peminjaman->kode_peminjaman(),
                
            ];
			// $data['status']='';
			// $data['status_pengembalian']='';
			$this->load->view('peminjaman/buat_peminjaman/v_buat_peminjaman_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode_peminjaman','nama_peminjaman','kode','nama_alat','nama_bahan','jumlah','tgl_pinjam','tanggal_kembali','status','status_pengembalian'));
            $this->m_buat_peminjaman->insertData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/buat_peminjaman","#content")');
			$this->fungsi->message_box("Data Kelola Peminjaman sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola buat_peminjaman dengan data sbb:",true);
		}
    }

    public function show_editForm($id='')
	{
		//$this->fungsi->check_previleges('buat_peminjaman');
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

			$this->load->view('peminjaman/buat_peminjaman/v_buat_peminjaman_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode_peminjaman','nama_peminjaman','kode','nama_alat','nama_bahan','jumlah','tgl_pinjam','tanggal_kembali','status'));
			$this->m_buat_peminjaman->updateData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/buat_peminjaman","#content")');
			$this->fungsi->message_box("Data Kelola Nama Alata sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola kelola_alat dengan data sbb:",true);
		}
	}

    public function delete($id)
    {
        
		if($id == '' || !is_numeric($id)) die;
		$this->m_buat_peminjaman->deleteData($id);
		$this->fungsi->run_js('load_silent("peminjaman/buat_peminjaman","#content")');
		$this->fungsi->message_box("Data Peminjaman Berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
    
    }
	public function view_print()
	{
		//$this->fungsi->check_previleges('data_penjualan');
		$data['cek_status'] = $this->m_buat_peminjaman->getData();
		$this->load->view('peminjaman/cek_status/v_cek_status_print',$data);
	}
    

}