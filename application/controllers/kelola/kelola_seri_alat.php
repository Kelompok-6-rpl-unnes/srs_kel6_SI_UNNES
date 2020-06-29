<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_seri_alat extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->fungsi->restrict();
        $this->load->model('kelola/m_kelola_seri_alat');
    }
    public function index()
	{
		$this->fungsi->check_previleges('kelola_seri_alat');
		$data['kelola_seri_alat'] = $this->m_kelola_seri_alat->getData();
		$this->load->view('kelola/kelola_seri_alat/v_seri_alat_list',$data);
	}
	public function form($param='')
    {
        $content   = "<div id='divsubcontent'></div>";
        $header    = "Form Kelola Seri Alat";
        $subheader = "kelola_seri_alat";
        $buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
        echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
        if($param=='base'){
            $this->fungsi->run_js('load_silent("kelola/kelola_seri_alat/show_addForm/","#divsubcontent")');    
        }else{
            $base_kom=$this->uri->segment(5);
            $this->fungsi->run_js('load_silent("kelola/kelola_seri_alat/show_editForm/'.$base_kom.'","#divsubcontent")');  
        }
    }
    public function show_addForm()
    {
        $this->fungsi->check_previleges('kelola_seri_alat');
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
            $this->load->view('kelola/kelola_seri_alat/v_seri_alat_add',$data);
        }
        else
        {
            $datapost = get_post_data(array('id','kategori','merk','seri','gambar','sop_pengoperasian','sop_pemeliharaan','sop_pemeriksaan','sop_kalibrasi','sop_uji_fungsi','stok','stok_minimal','status'));
            $this->m_kelola_seri_alat->insertData($datapost);
            $this->fungsi->run_js('load_silent("kelola/kelola_seri_alat","#content")');
            $this->fungsi->message_box("Data Seri Alat sukses disimpan...","success");
            $this->fungsi->catat($datapost,"Menambah Seri Alat dengan data sbb:",true);
        }
    }

    public function show_editForm($id='')
    {
        $this->fungsi->check_previleges('kelola_seri_alat');
        $this->load->library('form_validation');
        $config = array(
                array(
                    'field' => 'id',
                    'label' => 'id',
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
            $this->load->view('kelola/kelola_seri_alat/v_seri_alat_edit',$data);
        }
        else
        {
            $datapost = get_post_data(array('id','kategori','merk','seri','gambar','sop_pengoperasian','sop_pemeliharaan','sop_pemeriksaan','sop_kalibrasi','sop_uji_fungsi','stok','stok_minimal','status'));
            $this->m_kelola_seri_alat->updateData($datapost);
            $this->fungsi->run_js('load_silent("kelola/kelola_seri_alat","#content")');
            $this->fungsi->message_box("Data Seri Alat sukses diperbarui...","success");
            $this->fungsi->catat($datapost,"Mengedit Seri Alat dengan data sbb:",true);   
        }  
    }

    public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_kelola_seri_alat->deleteData($id);
                redirect('admin');
            }
 }
/* End of file kelola_seri_alat.php */
/* Location: ./application/controllers/kelola/kelola_seri_alat.php */