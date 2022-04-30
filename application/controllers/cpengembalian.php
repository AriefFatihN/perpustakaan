<?php

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Cpengembalian extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('mpeminjaman');
    }

    public function index()
    {

        $data['qpengembalian'] = $this->mpeminjaman->get_allpengembalian();
        $this->load->view('header');
        $this->load->view('vpengembalian', $data);
        $this->load->view('footer');
    }

    function excel()
    {
        $this->load->model('mpeminjaman');
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setCellValue('A1', 'No');
        $sheet->setCellValue('B1', 'Nama Peminjam');
        $sheet->setCellValue('C1', 'Judul Buku');
        $sheet->setCellValue('D1', 'Jumlah Terpinjam');
        $sheet->setCellValue('E1', 'Tanggal Terpinjam');
        $sheet->setCellValue('F1', 'Tanggal Harus Kembali');

        $xpengembalian = $this->mpeminjaman->get_allpengembalian();
        $no = 1;
        $x = 2;
        foreach ($xpengembalian as $rowpeminjaman) {
            $sheet->setCellValue('A' . $x, $no++);
            $sheet->setCellValue('B' . $x, $rowpeminjaman->nama_member);
            $sheet->setCellValue('C' . $x, $rowpeminjaman->judul);
            $sheet->setCellValue('D' . $x, $rowpeminjaman->jumlah_pinjam);
            $sheet->setCellValue('E' . $x, $rowpeminjaman->tgl_pinjam);
            $sheet->setCellValue('F' . $x, $rowpeminjaman->tgl_kembali);
            $x++;
        }

        $spreadsheet->getActiveSheet()->getStyle('A1:A1000')
            ->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
        $spreadsheet->getActiveSheet()->getStyle('D1:F1000')
            ->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
        $spreadsheet->getActiveSheet()->getStyle('E2:E1000')
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
        $filename = 'Data-Pengembalian-Buku-Pustaka-20';

        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="' . $filename . '.xlsx"');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
    }

    function pdf()
    {
        $this->load->model('mpeminjaman');
        $data['qpengembalian'] = $this->mpeminjaman->get_allpengembalian();
        $this->load->library('pdf');
        $this->pdf->setPaper('A4', 'landscape');
        $this->pdf->filename = "Data-Pengembalian-Pustaka-20.pdf";
        $this->pdf->load_view('vpengembalian_pdf', $data);
    }
}
