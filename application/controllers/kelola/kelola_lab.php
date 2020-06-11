<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_lab extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->fungsi->restrict();
        $this->load->model('kelola/m_kelola_lab');
    }
    public function index()
	{
		$this->fungsi->check_previleges('kelola_lab');
		$data['kelola_lab'] = $this->m_kelola_lab->getData();
		$this->load->view('kelola/kelola_lab/v_kelola_lab_list',$data);
	}
	public function form($param='')
    {
        $content   = "<div id='divsubcontent'></div>";
        $header    = "Form Kelola Laboratorium";
        $subheader = "Kelola Laboratorium";
        $buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
        echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
        if($param=='base'){
            $this->fungsi->run_js('load_silent("kelola/kelola_lab/show_addForm/","#divsubcontent")');    
        }else{
            $base_kom=$this->uri->segment(5);
            $this->fungsi->run_js('load_silent("kelola/kelola_lab/show_editForm/'.$base_kom.'","#divsubcontent")');  
        }
    }
    public function show_addForm()
    {
        $this->fungsi->check_previleges('kelola_lab');
        $this->load->library('form_validation');
        $config = array(
                array(
                    'field' => 'nama_lab',
                    'label' => 'nama_lab',
                    'rules' => 'required'
                )
            );
        $this->form_validation->set_rules($config);
        $this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

        if ($this->form_validation->run() == FALSE)
        {
            $data['status']='';
            $this->load->view('kelola/kelola_lab/v_kelola_lab_add',$data);
        }
        else
        {
            $datapost = get_post_data(array('nama_lab','alamat_lab','tipe_lab','kor_lab','laboran','foto_lab','status'));
            $this->m_kelola_lab->insertData($datapost);
            $this->fungsi->run_js('load_silent("kelola/kelola_lab","#content")');
            $this->fungsi->message_box("Data Kelola Laboratorium sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah Kelola Laboratorium dengan data sbb:",true);
        }
    }

    public function show_editForm($id='')
    {
        $this->fungsi->check_previleges('kelola_lab');
        $this->load->library('form_validation');
        $config = array(
                array(
                    'field' => 'id',
                    'label' => '',
                    'rules' => ''
                ),
                array(
                    'field' => 'nama_lab',
                    'label' => 'nama_lab',
                    'rules' => 'required'
                )
            );
        $this->form_validation->set_rules($config);
        $this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

        if ($this->form_validation->run() == FALSE)
        {
            $data['edit'] = $this->db->get_where('kelola_kelola_lab',array('id'=>$id));
            $data['status']='';
            $this->load->view('kelola/kelola_lab/v_kelola_lab_edit',$data);
        }
        else
        {
            $datapost = get_post_data(array('nama_lab','alamat_lab','tipe_lab','kor_lab','laboran','foto_lab','status'));
            $this->m_kelola_lab->updateData($datapost);
            $this->fungsi->run_js('load_silent("kelola/kelola_lab","#content")');
            $this->fungsi->message_box("Data Kelola Laboratorium sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit Kelola Laboratorium dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_kelola_lab->deleteData($id);
                redirect('admin');
            }
  
}

/* End of file kelola_lab.php */
/* Location: ./application/controllers/kelola/kelola_lab.php */