<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_validasi extends CI_Model {
//select->read
	public function getData($value='')
	{
		$this->db->from('validasi ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}
    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('kelola_validasi',$data);
       
	}
//update
	public function updateData($data='')
	{
		 $this->db->where('id', $data['id']);
            $this->db->update('validasi',$data);
	}
//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('validasi');
	}

}

/* End of file m_validasi.php */
/* Location: ./application/models/kelola/m_validasi.php */