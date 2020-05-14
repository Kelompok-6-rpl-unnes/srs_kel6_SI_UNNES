<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kategori_no_induk extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('master_no_induk ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('master_no_induk',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('master_no_induk',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('master_no_induk');
	}

}

/* End of file m_nama_alat.php */
/* Location: ./application/models/master/m_nama_alat.php */