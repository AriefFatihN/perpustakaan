<?php

class Madmin extends CI_Model
{
    var $tabel = 'admin';
    function __construct()
    {
        parent::__construct();
    }

    function get_alladmin()
    {
        $this->db->from($this->tabel);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->result();
        }
    }
    function get_idadmin()
    {
        $this->db->select('admin_id');
        $this->db->from('admin');
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->result();
        }
    }

    function ins($data)
    {
        $this->db->insert($this->tabel, $data);
        return TRUE;
    }

    function upd($id, $data)
    {
        $this->db->where('admin_id', $id);
        $this->db->update($this->tabel, $data);

        return TRUE;
    }

    function del($id)
    {
        $this->db->where('admin_id', $id);
        $this->db->delete($this->tabel);

        if ($this->db->affected_rows() == 1) {
            return TRUE;
        }
        return FALSE;
    }

    function get_byid($id)
    {
        $this->db->from($this->tabel);
        $this->db->where('admin_id', $id);

        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->result();
        }
    }
}