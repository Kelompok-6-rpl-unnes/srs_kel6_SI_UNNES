<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_sumber_pendanaan extends CI_Model {

    public function getData($value='')
    {
        $this->db->from('master_sumber_pendanaan ma');
        $this->db->order_by('ma.id', 'desc');
        return $this->db->get();
    }

    public function insertData($data='')
    {
        
        $this->db->insert('master_sumber_pendanaan',$data);
       
    }

    public function updateData($data='')
    {
         $this->db->where('id',$data['id']);
            $this->db->update('master_sumber_pendanaan',$data);
    }
    public function deleteData($id='')
    {
        $this->db->where('id', $id);
        $this->db->delete('master_sumber_pendanaan');
    }

}


