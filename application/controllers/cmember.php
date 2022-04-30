<?php

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Cmember extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('member');
        $this->load->helper('form', 'url');
    }

    public function index()
    {
        $data['title'] = "Data Member";
        $data['qmember'] = $this->member->get_allmember();
        $data['qpinjam'] = $this->member->get_idpeminjaman();
        $this->load->view('header');
        $this->load->view('vmember', $data);
        $this->load->view('footer');
    }

    public function form()
    {
        $to = $this->uri->segment(3);
        $id = $this->uri->segment(4);

        $member_id = addslashes($this->input->post('member_id'));
        $nisn_member = addslashes($this->input->post('nisn_member'));
        $nama_member = addslashes($this->input->post('nama_member'));
        $kelas_member = addslashes($this->input->post('kelas_member'));
        $kelamin_member = addslashes($this->input->post('kelamin_member'));
        $agama_member = addslashes($this->input->post('agama_member'));

        if ($to == "add") {
            $data['title'] = "Tambah Anggota";
            $data['act'] = "add_save";
            $this->load->view('header');
            $this->load->view('vmember_form', $data);
            $this->load->view('footer');
        } elseif ($to == "add_save") {
            $data = array(

                'nisn_member' => $nisn_member,
                'nama_member' => $nama_member,
                'kelas_member' => $kelas_member,
                'kelamin_member' => $kelamin_member,
                'agama_member' => $agama_member
            );
            $this->member->ins($data);
            redirect('cmember');
        } elseif ($to == "upd") {
            $data['title'] = "Edit Anggota";
            $data['act'] = "upd_save";
            $data['qdetmember'] = $this->member->get_byid($id);
            $this->load->view('header');
            $this->load->view('vmember_form', $data);
            $this->load->view('footer');
        } elseif ($to == "upd_save") {
            $data = array(

                'nisn_member' => $nisn_member,
                'nama_member' => $nama_member,
                'kelas_member' => $kelas_member,
                'kelamin_member' => $kelamin_member,
                'agama_member' => $agama_member
            );
            $this->member->upd($id, $data);
            redirect('cmember');
        }
    }

    function del($id)
    {
        $this->member->del($id);
        redirect('cmember');
    }

    function excel()
    {
        $this->load->model('member');
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setCellValue('A1', 'No');
        $sheet->setCellValue('B1', 'NISN');
        $sheet->setCellValue('C1', 'Nama Lengkap');
        $sheet->setCellValue('D1', 'Kelas');
        $sheet->setCellValue('E1', 'Jenis Kelamin');
        $sheet->setCellValue('F1', 'Agama');

        $xmember = $this->member->get_allmember();
        $no = 1;
        $x = 2;
        foreach ($xmember as $row) {
            $sheet->setCellValue('A' . $x, $no++);
            $sheet->setCellValue('B' . $x, $row->nisn_member);
            $sheet->setCellValue('C' . $x, $row->nama_member);
            $sheet->setCellValue('D' . $x, $row->kelas_member);
            $sheet->setCellValue('E' . $x, $row->kelamin_member);
            $sheet->setCellValue('F' . $x, $row->agama_member);
            $x++;
        }
        $spreadsheet->getActiveSheet()->getStyle('A1:A1000')
            ->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
        $spreadsheet->getActiveSheet()->getStyle('F2:F1000')
            ->getNumberFormat()
            ->setFormatCode(\PhpOffice\PhpSpreadsheet\Style\NumberFormat::FORMAT_NUMBER);

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
        $spreadsheet->getActiveSheet()->getStyle('A1:F1')->applyFromArray($styleRow);
        $spreadsheet->getActiveSheet()->getStyle('A1:A1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('B1:B1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('C1:C1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('D1:D1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('E1:E1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('F1:F1000')->applyFromArray($styleColumn);

        $spreadsheet->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('F')->setAutoSize(true);


        $writer = new Xlsx($spreadsheet);
        $filename = 'Data-Anggota-Pustaka-20';

        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="' . $filename . '.xlsx"');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
    }

    function pdf()
    {
        $this->load->model('member');
		$data['qmember'] = $this->member->get_allmember();
		$this->load->library('pdf');
		$this->pdf->setPaper('A4', 'potrait');
		$this->pdf->filename = "Data-Anggota-Pustaka-20.pdf";
		$this->pdf->load_view('vmember_pdf', $data);
    }
}
