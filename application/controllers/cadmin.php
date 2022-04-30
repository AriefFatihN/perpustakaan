<?php

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Cadmin extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('madmin');
        $this->load->helper('form', 'url');
    }

    public function index()
    {
        $data['title'] = "Data Admin";
        $data['qadmin'] = $this->madmin->get_alladmin();
        $this->load->view('header');
        $this->load->view('vadmin', $data);
        $this->load->view('footer');
    }

    public function form()
    {
        $to = $this->uri->segment(3);
        $id = $this->uri->segment(4);

        $admin_id = addslashes($this->input->post('admin_id'));
        $nama_admin = addslashes($this->input->post('nama_admin'));
        $username = addslashes($this->input->post('username'));
        $password = addslashes($this->input->post('password'));

        if ($to == "add") {
            $data['title'] = "Tambah Admin";
            $data['act'] = "add_save";
            $this->load->view('header');
            $this->load->view('vadmin_form', $data);
            $this->load->view('footer');
        } elseif ($to == "add_save") {
            $data = array(

                'nama_admin' => $nama_admin,
                'username' => $username,
                'password' => md5($password),
            );
            $this->madmin->ins($data);
            redirect('cadmin');
        } elseif ($to == "upd") {
            $data['title'] = "Edit Admin";
            $data['act'] = "upd_save";
            $data['qdetadmin'] = $this->madmin->get_byid($id);
            $this->load->view('header');
            $this->load->view('vadmin_form', $data);
            $this->load->view('footer');
        } elseif ($to == "upd_save") {
            $data = array(

                'nama_admin' => $nama_admin,
                'username' => $username,
                'password' => md5($password),
            );
            $this->madmin->upd($id, $data);
            redirect('cadmin');
        }
    }

    function del($id)
    {
        $this->madmin->del($id);
        redirect('cadmin');
    }

    function excel()
    {
        $this->load->model('madmin');
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setCellValue('A1', 'No');
        $sheet->setCellValue('B1', 'Nama Admin');
        $sheet->setCellValue('C1', 'Username');

        $xadmin = $this->madmin->get_alladmin();
        $no = 1;
        $x = 2;
        foreach ($xadmin as $rowadmin) {
            $sheet->setCellValue('A' . $x, $no++);
            $sheet->setCellValue('B' . $x, $rowadmin->nama_admin);
            $sheet->setCellValue('C' . $x, $rowadmin->username);
            $x++;
        }

        $spreadsheet->getActiveSheet()->getStyle('A1:A1000')
            ->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);

        $styleRow = [
            'font' => [
                'bold' => true,
            ],
            'borders' => [
                'top' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                ],
                'bottom' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                ],
            ],
        ];
        $styleColumn = [
            'borders' => [
                'right' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                ],
                'left' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                ],
            ],
        ];

        $spreadsheet->getActiveSheet()->getStyle('A1:C1')->applyFromArray($styleRow);
        $spreadsheet->getActiveSheet()->getStyle('A1:A1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('B1:B1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('C1:C1000')->applyFromArray($styleColumn);

        $spreadsheet->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);

        $writer = new Xlsx($spreadsheet);
        $filename = 'Data-Admin-Pustaka-20';

        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="' . $filename . '.xlsx"');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
    }

    function pdf()
    {
        $this->load->model('madmin');
        $data['qadmin'] = $this->madmin->get_alladmin();
        $this->load->library('pdf');
        $this->pdf->setPaper('A4', 'potrait');
        $this->pdf->filename = "Data-Admin-Pustaka-20.pdf";
        $this->pdf->load_view('vadmin_pdf', $data);
    }
}
