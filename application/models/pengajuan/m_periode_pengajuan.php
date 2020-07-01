<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class m_periode_pengajuan extends CI_Model {
       

	public function periode_pengajuan()
    {
        $sql = "SELECT MAX(MID(periode_pengajuan,8,4)) AS periode_pengajuan FROM periode_pengajuan WHERE MID(periode_pengajuan,2,6) = DATE_FORMAT(CURDATE(), '%y%m%d')";
        $query = $this->db->query($sql);
        if($query->num_rows() > 0 ){
            $row = $query->row();
            $n = ((int)$row->periode_pengajuan) + 1;
            $no = sprintf("%'.04d", $n);
        }else{
            $no = "0001";
        }
        $periode_pengajuan = "P".date('ymd').$no;
        return $periode_pengajuan;
    }

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