<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class absen extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->fungsi->restrict();
        $this->load->model('kelola/m_absen');
    }
    public function index()
	{
		$this->fungsi->check_previleges('absen');
		$data['absen'] = $this->m_absen->getData();
		$this->load->view('kelola/absen/v_absen_list',$data);
	}
	public function form($param='')
    {
        $content   = "<div id='divsubcontent'></div>";
        $header    = "Form Kelola Absen";
        $subheader = "Absen";
        $buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
        echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
        if($param=='base'){
            $this->fungsi->run_js('load_silent("kelola/absen/show_addForm/","#divsubcontent")');    
        }else{
            $base_kom=$this->uri->segment(5);
            $this->fungsi->run_js('load_silent("kelola/absen/show_editForm/'.$base_kom.'","#divsubcontent")');  
        }
    }
    public function show_addForm()
    {
        $this->fungsi->check_previleges('absen');
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
            $this->load->view('kelola/absen/v_absen_add',$data);
        }
        else
        {
            $datapost = get_post_data(array('id','nomor_induk','nama','tanggal','keterangan','jumlah_kehadiran','prodi','mata_kuliah','rombel'));
            $this->m_absen->insertData($datapost);
            $this->fungsi->run_js('load_silent("kelola/absen","#content")');
            $this->fungsi->message_box("Data absen sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah absen dengan data sbb:",true);
        }
    }

    public function show_editForm($id='')
    {
        $this->fungsi->check_previleges('absen');
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
            $data['edit'] = $this->db->get_where('kelola_absen',array('id'=>$id));
            $data['status']='';
            $this->load->view('kelola/absen/v_absen_edit',$data);
        }
        else
        {
            $datapost = get_post_data(array('id','nomor_induk','nama','tanggal','keterangan','jumlah_kehadiran','prodi','mata_kuliah','rombel'));
            $this->m_absen->updateData($datapost);
            $this->fungsi->run_js('load_silent("kelola/absen","#content")');
            $this->fungsi->message_box("Data absen sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit absen dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_absen->deleteData($id);
                redirect('admin');
            }
  
}

/* End of file absen.php */
/* Location: ./application/controllers/kelola/absen.php */