<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Jatuh_Tempo extends CI_Model {
//select->read
	public function getData($value='')
	{
		$this->db->from('jatuh_tempo');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}
    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('jatuh_tempo',$data);
       
	}
//update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('jatuh_tempo',$data);
	}
//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('jatuh_tempo');
	}

}

/* End of file m_jatuh_tempo.php */
/* Location: ./application/models/peminjaman/m_jatuh_tempo.php */