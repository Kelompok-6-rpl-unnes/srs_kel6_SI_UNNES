<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class penggantian extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->fungsi->restrict();
        $this->load->model('peminjaman/m_penggantian');
    }
    public function index()
	{
		$this->fungsi->check_previleges('penggantian');
		$data['penggantian'] = $this->m_penggantian->getData();
		$this->load->view('peminjaman/penggantian/v_penggantian_list',$data);
	}
	public function form($param='')
    {
        $content   = "<div id='divsubcontent'></div>";
        $header    = "Form Penggantian";
        $subheader = "penggantian";
        $buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
        echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
        if($param=='base'){
            $this->fungsi->run_js('load_silent("peminjaman/penggantian/show_addForm/","#divsubcontent")');    
        }else{
            $base_kom=$this->uri->segment(5);
            $this->fungsi->run_js('load_silent("peminjaman/penggantian/show_editForm/'.$base_kom.'","#divsubcontent")');  
        }
    }
    public function show_addForm()
    {
        $this->fungsi->check_previleges('penggantian');
        $this->load->library('form_validation');
        $config = array(
                array(
                    'field' => 'id_peminjaman',
                    'label' => 'id_peminjaman',
                    'rules' => 'required'
                )
            );
        $this->form_validation->set_rules($config);
        $this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

        if ($this->form_validation->run() == FALSE)
        {
            $data['status']='';
            $this->load->view('peminjaman/penggantian/v_penggantian_add',$data);
        }
        else
        {
            $datapost = get_post_data(array('id','id_peminjaman','nama','nomor_induk','jenis','nama_barang','merk_barang','seri_barang','sistem_penggantian','status'));
            $this->m_penggantian->insertData($datapost);
            $this->fungsi->run_js('load_silent("peminjaman/penggantian","#content")');
            $this->fungsi->message_box("Data Penggantian sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah Penggantian dengan data sbb:",true);
        }
    }

    public function show_editForm($id='')
    {
        $this->fungsi->check_previleges('penggantian');
        $this->load->library('form_validation');
        $config = array(
                array(
                    'field' => 'id',
                    'label' => '',
                    'rules' => ''
                ),
                array(
                    'field' => 'id_peminjaman',
                    'label' => 'id_peminjaman',
                    'rules' => 'required'
                )
            );
        $this->form_validation->set_rules($config);
        $this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

        if ($this->form_validation->run() == FALSE)
        {
            $data['edit'] = $this->db->get_where('penggantian',array('id'=>$id));
            $data['status']='';
            $this->load->view('peminjaman/penggantian/v_penggantian_edit',$data);
        }
        else
        {
            $datapost = get_post_data(array('id','id_peminjaman','nama','nomor_induk','jenis','nama_barang','merk_barang','seri_barang','sistem_penggantian','status'));
            $this->m_penggantian->updateData($datapost);
            $this->fungsi->run_js('load_silent("peminjaman/penggantian","#content")');
            $this->fungsi->message_box("Data Penggantian sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit penggantian dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_penggantian->deleteData($id);
                redirect('admin');
            }
  
}

/* End of file penggantian.php */
/* Location: ./application/controllers/peminjaman/penggantian.php */