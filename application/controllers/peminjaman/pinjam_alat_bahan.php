<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pinjam_alat_bahan extends CI_Controller {
class pinjam_alat_bahan extends CI_Controller {

	public function __construct()
	{
@@ -38,8 +38,8 @@ public function show_addForm()
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'pinjam_alat_bahan',
					'label' => 'pinjam_alat_bahan',
					'field'	=> 'kategori_pinjam',
					'label' => 'kategori_pinjam',
					'rules' => 'required'
				)
			);
@@ -68,12 +68,12 @@ public function show_editForm($id='')
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'pinjam_alat_bahan',
					'label' => 'pinjam_alat_bahan',
					'field'	=> 'kategori_pinjam',
					'label' => 'kategori_pinjam',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');
		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('pinjam_alat_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('peminjaman/pinjam_alat_bahan/v_pinjam_alat_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','pinjam_alat_bahan','kategori_pinjam','jumlah','tanggal','tgl_kembali','keterangan','keperluan'));
			$this->m_pinjam_alat_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/pinjam_alat_bahan","#content")');
			$this->fungsi->message_box("Data Peminjaman Alat dan Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Peminjaman Alat Dan Bahan dengan data sbb:",true);
		}
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_pinjam_alat_bahan->deleteData($id);
		redirect('admin');
	}
	}
/* End of file pinjam_alat_bahan.php */
/* Location: ./application/controllers/peminjaman/pinjam_alat_bahan.php */