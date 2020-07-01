<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class m_pengajuan_alat extends CI_Model {

	//yang (12,4) sama 6,6) aku gapaham
    public function kode_pengajuan()
    {
        $sql = "SELECT MAX(MID(pengajuan_alat,12,4)) AS pengajuan_alat FROM pengajuan WHERE MID(pengajuan_alat,6,6) = DATE_FORMAT(CURDATE(), '%y%m%d')";
        $query = $this->db->query($sql);
        if($query->num_rows() > 0 ){
            $row = $query->row();
            $n = ((int)$row->pengajuan_alat) + 1;
            $no = sprintf("%'.04d", $n);
        }else{
            $no = "0001";
        }
        $pengajuan_alat = "K-PGJN".date('ymd').$no;
        return $pengajuan_alat;
	}
	
    //select->read
	public function getData($value='')
	{
		$this->db->from('pengajuan_alat ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
    }
    
    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('pengajuan_alat',$data);
       
	}

   //update
	public function updateData($data='')
	{
		 	$this->db->where('id',$data['id']);
			$this->db->update('pengajuan_alat',$data);
			//$this->db->join('jenis_kelamin jk', 'cu.jenis_kelamin = jk.id', 'left');
			//$this->db->select('cu.*,jk.jenis_kelamin');
	}

   //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('pengajuan_alat');
	}

	public function join()
	{
		$this->db->select('pengajuan_alat.*, periode_pengajuan.periode_pengajuan, kelola_lab.nama_lab');
		$this->db->from('pengajuan_alat');
		$this->db->join('periode_pengajuan', 'periode_pengajuan.id = pengajuan_alat.pengajuan_alat');
		$this->db->join('kelola_lab', 'kelola_lab.id = pengajuan_alat.nama_lab');
		return $this->db->get();
	}

}
