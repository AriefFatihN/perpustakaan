<?php

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Cbuku extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('mbuku');
        $this->load->helper('form', 'url');
    }

    public function index()
    {
        $data['title'] = "Data Buku";
        $data['qbuku'] = $this->mbuku->get_allbuku();
        $this->load->view('header');
        $this->load->view('vbuku', $data);
        $this->load->view('footer');
    }

    public function form()
    {
        $to = $this->uri->segment(3);
        $id = $this->uri->segment(4);

        $data['qrak'] = $this->mbuku->get_allrak();
        $buku_id = addslashes($this->input->post('buku_id'));
        $kode_buku = addslashes($this->input->post('kode_buku'));
        $judul = addslashes($this->input->post('judul'));
        $penerbit = addslashes($this->input->post('penerbit'));
        $pengarang = addslashes($this->input->post('pengarang'));
        $th_terbit = addslashes($this->input->post('th_terbit'));
        $jumlah = addslashes($this->input->post('jumlah'));
        $rak = addslashes($this->input->post('rak_id'));
        $ket = addslashes($this->input->post('ket'));

        if ($to == "add") {
            $data['title'] = "Tambah Buku";
            $data['act'] = "add_save";
            $this->load->view('header');
            $this->load->view('vbuku_form', $data);
            $this->load->view('footer');
        } elseif ($to == "add_save") {
            $data = array(
                'kode_buku' => $kode_buku,
                'judul' => $judul,
                'penerbit' => $penerbit,
                'pengarang' => $pengarang,
                'th_terbit' => $th_terbit,
                'jumlah' => $jumlah,
                'rak_id' => $rak,
                'ket' => $ket
            );
            $this->mbuku->ins($data);
            redirect('cbuku');
        } elseif ($to == "upd") {
            $data['title'] = "Edit Buku";
            $data['act'] = "upd_save";
            $data['qdetbuku'] = $this->mbuku->get_byid($id);
            $this->load->view('header');
            $this->load->view('vbuku_form', $data);
            $this->load->view('footer');
        } elseif ($to == "upd_save") {
            $data = array(
                'kode_buku' => $kode_buku,
                'judul' => $judul,
                'penerbit' => $penerbit,
                'pengarang' => $pengarang,
                'th_terbit' => $th_terbit,
                'jumlah' => $jumlah,
                'rak_id' => $rak,
                'ket' => $ket
            );
            $this->mbuku->upd($id, $data);
            redirect('cbuku');
        }
    }

    function del($id)
    {
        $this->mbuku->del($id);
        redirect('cbuku');
    }

    function detail_buku()
    {
        $id = $this->uri->segment(3);
        $data['qbuku'] = $this->mbuku->get_byid($id);
        $this->load->view('header');
        $this->load->view('vbuku_detail', $data);
        $this->load->view('footer');
    }

    function excel()
    {
        $this->load->model('mbuku');
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setCellValue('A1', 'No');
        $sheet->setCellValue('B1', 'ISBN');
        $sheet->setCellValue('C1', 'Judul Buku');
        $sheet->setCellValue('D1', 'Penerbit');
        $sheet->setCellValue('E1', 'Pengarang');
        $sheet->setCellValue('F1', 'Tahun Terbit');
        $sheet->setCellValue('G1', 'Jumlah Buku');
        $sheet->setCellValue('H1', 'Rak');

        $xbuku = $this->mbuku->get_allbuku();
        $no = 1;
        $x = 2;
        foreach ($xbuku as $row) {
            $sheet->setCellValue('A' . $x, $no++);
            $sheet->setCellValue('B' . $x, $row->kode_buku);
            $sheet->setCellValue('C' . $x, $row->judul);
            $sheet->setCellValue('D' . $x, $row->penerbit);
            $sheet->setCellValue('E' . $x, $row->pengarang);
            $sheet->setCellValue('F' . $x, $row->th_terbit);
            $sheet->setCellValue('G' . $x, $row->jumlah);
            $sheet->setCellValue('H' . $x, $row->rak_id);

            $x++;
        }
        $spreadsheet->getActiveSheet()->getStyle('A1:A1000')
            ->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
        $spreadsheet->getActiveSheet()->getStyle('F1:H1000')
            ->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
        $spreadsheet->getActiveSheet()->getStyle('B2:B1000')
            ->getNumberFormat()
            ->setFormatCode(\PhpOffice\PhpSpreadsheet\Style\NumberFormat::FORMAT_NUMBER);
        $spreadsheet->getActiveSheet()->getStyle('B2:B1000')
            ->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);

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
        $spreadsheet->getActiveSheet()->getStyle('A1:H1')->applyFromArray($styleRow);
        $spreadsheet->getActiveSheet()->getStyle('A1:A1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('B1:B1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('C1:C1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('D1:D1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('E1:E1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('F1:F1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('G1:G1000')->applyFromArray($styleColumn);
        $spreadsheet->getActiveSheet()->getStyle('H1:H1000')->applyFromArray($styleColumn);

        $spreadsheet->getActiveSheet()->getColumnDimension('A')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('F')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('G')->setAutoSize(true);
        $spreadsheet->getActiveSheet()->getColumnDimension('H')->setAutoSize(true);

        $writer = new Xlsx($spreadsheet);
        $filename = 'Data-Buku-Pustaka-20';

        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="' . $filename . '.xlsx"');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
    }

    function pdf()
    {
        $this->load->model('mbuku');
        $data['qbuku'] = $this->mbuku->get_allbuku();
        $this->load->library('pdf');
        $this->pdf->setPaper('A4', 'landscape');
        $this->pdf->filename = "Data-Buku-Pustaka-20.pdf";
        $this->pdf->load_view('vbuku_pdf', $data);
    }
}
