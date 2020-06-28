<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pinjam_bahan extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('pinjam_bahan mb');
		$this->db->order_by('mb.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('pinjam_bahan',$data);
       
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('pinjam_bahan',$data);
	}
    //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('pinjam_bahan');
	}
	public function join()
	{
		$this->db->select('pinjam_bahan.*, master_inven.kode, master_bahan.nama_bahan');
		$this->db->from('pinjam_bahan');
		$this->db->join('master_inven', 'master_inven.id = pinjam_bahan.kode');
		$this->db->join('master_bahan', 'master_bahan.id = pinjam_bahan.pinjam_bahan');
		return $this->db->get();
	}
	public function getlist()
	{
		$this->db->from('cms_user')->get();
	}
}
/* End of file m_pinjam_bahan.php */
/* Location: ./application/models/peminjaman/m_pinjam_bahan.php */