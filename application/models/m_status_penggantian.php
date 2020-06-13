<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_status_penggantian extends CI_Model {

	public function getEdit($value='')
	{
		$this->db->where('id', $value);
		return $this->db->get('status_penggantian');
	}

	public function updateData($object='')
	{
		$this->db->where('id', '1');
		$this->db->update('status_penggantian', $object);
	}
	public function getData()
	{
		return $this->db->get('status_penggantian');
	}
	}