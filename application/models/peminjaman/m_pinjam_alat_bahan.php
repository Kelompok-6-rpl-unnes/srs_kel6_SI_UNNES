<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pinjam_alat_bahan extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('master_peminjaman mb');
		$this->db->order_by('mb.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('master_peminjaman',$data);
       
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('master_peminjaman',$data);
	}
    //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('master_peminjaman');
	}

}
