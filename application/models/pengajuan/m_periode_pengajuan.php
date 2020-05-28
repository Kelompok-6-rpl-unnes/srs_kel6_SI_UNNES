<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class m_periode_pengajuan extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('periode_pengajuan ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
    }
    
    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('periode_pengajuan',$data);
       
	}
   //update


	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('periode_pengajuan',$data);
	}
   //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('periode_pengajuan');
	}

}
