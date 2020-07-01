<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_buat_peminjaman extends CI_Model {

	function hitung(){      
		 
		$ce = $this->db->query('SELECT * FROM peminjaman WHERE tanggal_kembali BETWEEN DATE_SUB(NOW(), INTERVAL 2 MONTH) AND NOW()');
			$nullex = $ce->num_rows();
			return $nullex;     
	}
	function jatuh_tempo(){
		
		
	
		return $this->db->query('SELECT * FROM peminjaman WHERE tanggal_kembali BETWEEN NOW() AND DATE_ADD(NOW(), INTERVAL 7 DAY)');
	}

    public function kode_peminjaman()
    {
        $sql = "SELECT MAX(MID(kode_peminjaman,8,4)) AS kode_peminjaman FROM peminjaman WHERE MID(kode_peminjaman,2,6) = DATE_FORMAT(CURDATE(), '%y%m%d')";
        $query = $this->db->query($sql);
        if($query->num_rows() > 0 ){
            $row = $query->row();
            $n = ((int)$row->kode_peminjaman) + 1;
            $no = sprintf("%'.04d", $n);
        }else{
            $no = "0001";
        }
        $kode_peminjaman = "P".date('ymd').$no;
        return $kode_peminjaman;
	}
	

    //select->read
	public function getData()
	{
		$this->db->from('peminjaman');
		$this->db->order_by('peminjaman.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('peminjaman',$data);
       
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
			$this->db->update('peminjaman',$data);
			//$this->db->join('jenis_kelamin jk', 'cu.jenis_kelamin = jk.id', 'left');
		//$this->db->select('cu.*,jk.jenis_kelamin');
	}
    //delete
	public function deleteData($id)
	{
		$this->db->where('id', $id);
        $this->db->delete('peminjaman');
	}

	public function join()
	{
		$this->db->from('cek_status_peminjaman');
		$this->db->join('kategori_peminjaman','kategori_peminjaman.id = kategori_peminjaman');
		return $this->db->get();
	}

}