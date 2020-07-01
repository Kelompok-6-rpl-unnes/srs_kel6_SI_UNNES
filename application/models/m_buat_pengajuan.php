<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_buat_pengajuan extends CI_Model {

//yang (12,4) sama 6,6) aku gapaham
    public function kode_pengajuan()
    {
        $sql = "SELECT MAX(MID(kode_pengajuan,12,4)) AS kode_pengajuan FROM pengajuan WHERE MID(kode_pengajuan,6,6) = DATE_FORMAT(CURDATE(), '%y%m%d')";
        $query = $this->db->query($sql);
        if($query->num_rows() > 0 ){
            $row = $query->row();
            $n = ((int)$row->kode_pengajuan) + 1;
            $no = sprintf("%'.04d", $n);
        }else{
            $no = "0001";
        }
        $kode_pengajuan = "K-PGJN".date('ymd').$no;
        return $kode_pengajuan;
    }

    //select->read
	public function getData($value='')
	{
		$this->db->from('pengajuan');
		$this->db->order_by('pengajuan.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('pengajuan',$data);
       
	}
    //update
	public function updateData($data='')
	{
		$this->db->where('id',$data['id']);
		$this->db->update('pengajuan',$data);
		//$this->db->join('jenis_kelamin jk', 'cu.jenis_kelamin = jk.id', 'left');
		//$this->db->select('cu.*,jk.jenis_kelamin');
	}
    //delete
	public function deleteData($id)
	{
		$this->db->where('id', $id);
        $this->db->delete('pengajuan');
	}

	public function join()
	{
		$this->db->from('cek_status_pengajuan');
		$this->db->join('kategori_pengajuan','kategori_pengajuan.id = kategori_pengajuan');
		return $this->db->get();
	}

}