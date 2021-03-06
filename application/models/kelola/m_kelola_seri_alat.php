<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_seri_alat extends CI_Model {
//select->read
	public function getData($value='')
	{
		$this->db->from('kelola_seri_alat ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}
    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('kelola_seri_alat',$data);
       
	}
//update
	public function updateData($data='')
	{
		 $this->db->where('id', $data['id']);
            $this->db->update('kelola_seri_alat',$data);
	}
//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_seri_alat');
	}

}

/* End of file m_seri_alat.php */
/* Location: ./application/models/kelola/m_seri_alat.php */