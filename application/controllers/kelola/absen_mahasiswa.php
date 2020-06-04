<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class absen_mahasiswa extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->fungsi->restrict();
        $this->load->model('kelola/m_absen_mahasiswa');
    }
    public function index()
	{
		$this->fungsi->check_previleges('absen_mahasiswa');
		$data['absen_mahasiswa'] = $this->m_absen_mahasiswa->getData();
		$this->load->view('kelola/absen_mahasiswa/v_absen_mahasiswa_list',$data);
	}
	public function form($param='')
    {
        $content   = "<div id='divsubcontent'></div>";
        $header    = "Form Kelola Absen Mahasiswa";
        $subheader = "Absen Mahasiswa";
        $buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
        echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
        if($param=='base'){
            $this->fungsi->run_js('load_silent("kelola/absen_mahasiswa/show_addForm/","#divsubcontent")');    
        }else{
            $base_kom=$this->uri->segment(5);
            $this->fungsi->run_js('load_silent("kelola/absen_mahasiswa/show_editForm/'.$base_kom.'","#divsubcontent")');  
        }
    }
    public function show_addForm()
    {
        $this->fungsi->check_previleges('absen_mahasiswa');
        $this->load->library('form_validation');
        $config = array(
                array(
                    'field' => 'nomor_induk',
                    'label' => 'nomor_induk',
                    'rules' => 'required'
                )
            );
        $this->form_validation->set_rules($config);
        $this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

        if ($this->form_validation->run() == FALSE)
        {
            $data['status']='';
            $this->load->view('kelola/absen_mahasiswa/v_absen_mahasiswa_add',$data);
        }
        else
        {
            $datapost = get_post_data(array('id','nomor_induk','nama','tanggal','keterangan','jumlah_kehadiran','prodi','mata_kuliah','rombel'));
            $this->m_absen_mahasiswa->insertData($datapost);
            $this->fungsi->run_js('load_silent("kelola/absen_mahasiswa","#content")');
            $this->fungsi->message_box("Data absen mahasiswa sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah absen mahasiswa dengan data sbb:",true);
        }
    }

    public function show_editForm($id='')
    {
        $this->fungsi->check_previleges('absen_mahasiswa');
        $this->load->library('form_validation');
        $config = array(
                array(
                    'field' => 'id',
                    'label' => '',
                    'rules' => ''
                ),
                array(
                    'field' => 'nomor_induk',
                    'label' => 'nomor_induk',
                    'rules' => 'required'
                )
            );
        $this->form_validation->set_rules($config);
        $this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

        if ($this->form_validation->run() == FALSE)
        {
            $data['edit'] = $this->db->get_where('kelola_absen_mahasiswa',array('id'=>$id));
            $data['status']='';
            $this->load->view('kelola/absen_mahasiswa/v_absen_mahasiswa_edit',$data);
        }
        else
        {
            $datapost = get_post_data(array('id','nomor_induk','nama','tanggal','keterangan','jumlah_kehadiran','prodi','mata_kuliah','rombel'));
            $this->m_absen_mahasiswa->updateData($datapost);
            $this->fungsi->run_js('load_silent("kelola/absen_mahasiswa","#content")');
            $this->fungsi->message_box("Data absen mahasiswa sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit absen mahasiswa dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_absen->deleteData($id);
                redirect('admin');
            }
  
}

/* End of file absen_mahasiswa.php */
/* Location: ./application/controllers/kelola/absen_mahasiswa.php */