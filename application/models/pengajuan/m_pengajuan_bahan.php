<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pengajuan_bahan extends CI_Model {

	//yang (12,4) sama 6,6) aku gapaham
    public function kode_pengajuan()
    {
        $sql = "SELECT MAX(MID(pengajuan_bahan,12,4)) AS pengajuan_bahan FROM pengajuan WHERE MID(pengajuan_bahan,6,6) = DATE_FORMAT(CURDATE(), '%y%m%d')";
        $query = $this->db->query($sql);
        if($query->num_rows() > 0 ){
            $row = $query->row();
            $n = ((int)$row->pengajuan_bahan) + 1;
            $no = sprintf("%'.04d", $n);
        }else{
            $no = "0001";
        }
        $pengajuan_bahan = "K-PGJN".date('ymd').$no;
        return $pengajuan_bahan;
	}
	//select->read
	public function getData($value='')
	{
		$this->db->from('pengajuan_bahan ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
    }
    
    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('pengajuan_bahan',$data);
       
	}
   //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('pengajuan_bahan',$data);
	}
   //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('pengajuan_bahan');
	}

	public function join()
	{
		$this->db->select('pengajuan_bahan.*, periode_pengajuan.periode_pengajuan, master_bahan.nama_bahan, kelola_lab.nama_lab');
		$this->db->from('pengajuan_bahan');
		$this->db->join('periode_pengajuan', 'periode_pengajuan.id = pengajuan_bahan.periode');
		$this->db->join('master_bahan', 'master_bahan.id = pengajuan_bahan.nama_bahan');
		$this->db->join('kelola_lab', 'kelola_lab.id = pengajuan_bahan.nama_lab');
		return $this->db->get();
	}

}
/* End of file m_pengajuan_bahan.php */
/* Location: ./application/models/pengajuan/m_pengajuan_bahan.php */