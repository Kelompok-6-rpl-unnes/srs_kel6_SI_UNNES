<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_penggantian extends CI_Model {
//select->read
	public function getData($value='')
	{
		$this->db->from('penggantian ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}
    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('penggantian',$data);
       
	}
//update
	public function updateData($data='')
	{
		 $this->db->where('id', $data['id']);
            $this->db->update('penggantian',$data);
	}
//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('penggantian');
	}

}

/* End of file m_penggantian.php */
/* Location: ./application/models/peminjaman/m_penggantian.php */