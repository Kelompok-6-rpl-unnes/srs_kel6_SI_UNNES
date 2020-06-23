<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class seri_alat extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->fungsi->restrict();
        $this->load->model('kelola/m_seri_alat');
    }
    public function index()
	{
		$this->fungsi->check_previleges('seri_alat');
		$data['seri_alat'] = $this->m_seri_alat->getData();
		$this->load->view('kelola/aseri_alat/v_seri_alat_list',$data);
	}
	public function form($param='')
    {
        $content   = "<div id='divsubcontent'></div>";
        $header    = "Form Kelola Seri Alat";
        $subheader = "Seri Alat";
        $buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
        echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
        if($param=='base'){
            $this->fungsi->run_js('load_silent("kelola/seri_alat/show_addForm/","#divsubcontent")');    
        }else{
            $base_kom=$this->uri->segment(5);
            $this->fungsi->run_js('load_silent("kelola/seri_alat/show_editForm/'.$base_kom.'","#divsubcontent")');  
        }
    }
    public function show_addForm()
    {
        $this->fungsi->check_previleges('seri_alat');
        $this->load->library('form_validation');
        $config = array(
                array(
                    'field' => 'kategori',
                    'label' => 'kategori',
                    'rules' => 'required'
                )
            );
        $this->form_validation->set_rules($config);
        $this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

        if ($this->form_validation->run() == FALSE)
        {
            $data['status']='';
            $this->load->view('kelola/seri_alat/v_seri_alat_add',$data);
        }
        else
        {
            $datapost = get_post_data(array('id','kategori','merk','seri','gambar','sop_pengoperasian','sop_pemeliharaan','sop_pemeriksaan',,'sop_kalibrasi','sop_uji_fungsi','stok','stok_minimal','status'));
            $this->m_seri_alat->insertData($datapost);
            $this->fungsi->run_js('load_silent("kelola/seri_alat","#content")');
            $this->fungsi->message_box("Data Seri Alat sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah Seri Alat dengan data sbb:",true);
        }
    }

    public function show_editForm($id='')
    {
        $this->fungsi->check_previleges('seri_alat');
        $this->load->library('form_validation');
        $config = array(
                array(
                    'field' => 'id',
                    'label' => '',
                    'rules' => ''
                ),
                array(
                    'field' => 'kategori',
                    'label' => 'kategori',
                    'rules' => 'required'
                )
            );
        $this->form_validation->set_rules($config);
        $this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

        if ($this->form_validation->run() == FALSE)
        {
            $data['edit'] = $this->db->get_where('kelola_seri_alat',array('id'=>$id));
            $data['status']='';
            $this->load->view('kelola/seri_alat/v_seri_alat_edit',$data);
        }
        else
        {
            $datapost = get_post_data(array('id','nomor_induk_mahasiswa','nama_lengkap','tanggal','keterangan','jumlah_kehadiran','prodi','mata_kuliah','rombel'));
            $this->m_absen_mahasiswa->updateData($datapost);
            $this->fungsi->run_js('load_silent("kelola/absen_mahasiswa","#content")');
            $this->fungsi->message_box("Data absen mahasiswa sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit absen mahasiswa dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_absen_mahasiswa->deleteData($id);
                redirect('admin');
            }
  
}

/* End of file absen_mahasiswa.php */
/* Location: ./application/controllers/kelola/absen_mahasiswa.php */