<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_absen_mahasiswa extends CI_Model {
//select->read
	public function getData($value='')
	{
		$this->db->from('kelola_absen_mahasiswa ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}
    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('kelola_absen_mahasiswa',$data);
       
	}
//update
	public function updateData($data='')
	{
		 $this->db->where('id', $data['id']);
            $this->db->update('kelola_absen_mahasiswa',$data);
	}
//delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_absen_mahasiswa');
	}

}

/* End of file m_absen_mahasiswa.php */
/* Location: ./application/models/kelola/m_absen_mahasiswa.php */