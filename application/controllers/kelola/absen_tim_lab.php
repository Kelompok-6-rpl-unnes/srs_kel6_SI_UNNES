<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class absen_tim_lab extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->fungsi->restrict();
        $this->load->model('kelola/m_absen_tim_lab');
    }
    public function index()
	{
        $this->fungsi->check_previleges('absen_tim_lab');
		$data['absen_tim_lab'] = $this->m_absen_tim_lab->getData();
		$this->load->view('kelola/absen_tim_lab/v_absen_tim_lab_list',$data);
	}
	public function form($param='')
    {
        $content   = "<div id='divsubcontent'></div>";
        $header    = "Form Kelola Absen Tim Lab";
        $subheader = "Absen Tim Lab";
        $buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
        echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
        if($param=='base'){
            $this->fungsi->run_js('load_silent("kelola/absen_tim_lab/show_addForm/","#divsubcontent")');    
        }else{
            $base_kom=$this->uri->segment(5);
            $this->fungsi->run_js('load_silent("kelola/absen_tim_lab/show_editForm/'.$base_kom.'","#divsubcontent")');  
        }
    }
    public function show_addForm()
    {
        $this->fungsi->check_previleges('absen_tim_lab');
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
            $this->load->view('kelola/absen_tim_lab/v_absen_tim_lab_add',$data);
        }
        else
        {
            $datapost = get_post_data(array('id','nomor_induk','nama_lengkap','tanggal','keterangan','jumlah_kehadiran','jabatan'));
            $this->m_absen_tim_lab->insertData($datapost);
            $this->fungsi->run_js('load_silent("kelola/absen_tim_lab","#content")');
            $this->fungsi->message_box("Data absen tim lab sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah absen tim lab dengan data sbb:",true);
        }
    }

    public function show_editForm($id='')
    {
        $this->fungsi->check_previleges('absen_tim_lab');
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
            $data['edit'] = $this->db->get_where('kelola_absen_tim_lab',array('id'=>$id));
            $data['status']='';
            $this->load->view('kelola/absen_tim_lab/v_absen_tim_lab_edit',$data);
        }
        else
        {
            $datapost = get_post_data(array('id','nomor_induk','nama_lengkap','tanggal','keterangan','jumlah_kehadiran','jabatan'));
            $this->m_absen_tim_lab->updateData($datapost);
            $this->fungsi->run_js('load_silent("kelola/absen_tim_lab","#content")');
            $this->fungsi->message_box("Data absen tim lab sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit absen tim lab dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_absen_tim_lab->deleteData($id);
                redirect('admin');
            }
  
}

/* End of file absen_tim_lab.php */
/* Location: ./application/controllers/kelola/absen_tim_lab.php */