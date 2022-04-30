<?php

class Cuser_login extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('muser_login');
    }

    function index()
    {
        $this->load->view('session/vlogin');
    }

    function aksi_login()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $where = array(
            'username'  => $username,
            'password'  => md5($password),
        );
        $cek = $this->muser_login->cek_login("admin", $where)->num_rows();
        if ($cek > 0) {
            $data_session = array(
                'nama_admin'=> 'Admin Pustaka 20',
                'status'    => 'login',
            );
            $this->session->set_userdata($data_session);

            redirect(base_url("chome"));
        } else {
            $data['error'] = '<div class="alert alert-danger" style="margin-top: 3px">
            <div class="header"><b><i class="fa fa-exclamation-circle"></i> ERROR</b> username atau password salah!</div></div>';
            $this->load->view('session/vlogin', $data);
        }
    }

    function logout()
    {
        $this->session->sess_destroy();
        redirect(base_url('cuser_login'));
    }
}
