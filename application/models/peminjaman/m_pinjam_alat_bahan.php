<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pinjam_alat_bahan extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('pinjam_alat_bahan mb');
		$this->db->order_by('mb.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('pinjam_alat_bahan',$data);
       
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('pinjam_alat_bahan',$data);
	}
    //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('pinjam_alat_bahan');
	}

}
/* End of file m_pinjam_alat_bahan.php */
/* Location: ./application/models/peminjaman/m_pinjam_alat_bahan.php */