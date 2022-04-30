<?php

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Cpeminjaman extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('mpeminjaman');
        $this->load->helper('form', 'url');
    }

    public function index()
    {
        $data['title'] = "Peminjaman";
        $data['qpeminjaman'] = $this->mpeminjaman->get_allpeminjaman();
        $this->load->view('header');
        $this->load->view('vpeminjaman', $data);
        $this->load->view('footer');
    }

    public function form()
    {
        $to = $this->uri->segment(3);
        $id = $this->uri->segment(4);

        $data['qmember'] = $this->mpeminjaman->get_allmember();
        $data['qbuku'] = $this->mpeminjaman->get_allbuku();

        $member_id = addslashes($this->input->post('member_id'));
        $buku_id = addslashes($this->input->post('buku_id'));
        $tgl_pinjam = date('Y-m-d');
        $tgl_pengembalian = date('Y-m-d');
        $date = strtotime("+7 day");
        $t = date('Y-m-d', $date);

        $tgl_kembali = $t;
        $jumlah = addslashes($this->input->post('jumlah_pinjam'));
        $status = addslashes($this->input->post('status'));
        $ket_pinjam = addslashes($this->input->post('ket_pinjam'));

        if ($to == "add") {
            $data['title'] = "Tambah Peminjaman";
            $data['act'] = "add_save";
            $this->load->view('header');
            $this->load->view('vpeminjaman_form', $data);
            $this->load->view('footer');
        } elseif ($to == "add_save") {
            $data = array(

                'member_id' => $member_id,
                'buku_id' => $buku_id,
                'tgl_pinjam' => $tgl_pinjam,
                'tgl_kembali' => $tgl_kembali,
                'jumlah_pinjam' => $jumlah,
                'status' => $status,
                'ket_pinjam' => $ket_pinjam
            );
            $this->mpeminjaman->ins($data);
            redirect('chome');
        } elseif ($to == "upd") {
            $data['title'] = "Edit Peminjaman";
            $data['act'] = "upd_save";
            $data['qdetpeminjaman'] = $this->mpeminjaman->get_byid($id);
            $this->load->view('header');
            $this->load->view('vpeminjaman_form', $data);
            $this->load->view('footer');
        } elseif ($to == "upd_save") {
            $data = array(

                'member_id' => $member_id,
                'buku_id' => $buku_id,
                'tgl_pinjam' => $tgl_pinjam,
                'tgl_pengembalian' => $tgl_pengembalian,
                'jumlah_pinjam' => $jumlah,
                'status' => $status,
                'ket_pinjam' => $ket_pinjam
            );
            $this->mpeminjaman->upd($id, $data);
            redirect('cpeminjaman');
        } elseif ($to == "upd_pengembalian") {
            $data = array(

                'tgl_pengembalian' => $tgl_pengembalian,
                'status' => 'Kembali'
            );
            $this->mpeminjaman->upd($id, $data);
            redirect('cpeminjaman');
        }
    }

    function del($id)
    {
        $this->mpeminjaman->del($id);
        redirect('cpeminjaman');
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

        $xpeminjaman = $this->mpeminjaman->get_allpeminjaman();
        $no = 1;
        $x = 2;
        foreach ($xpeminjaman as $rowpeminjaman) {
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
        $filename = 'Data-Peminjaman-Pustaka-20';

        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="' . $filename . '.xlsx"');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
    }

    function pdf()
    {
        $this->load->model('mpeminjaman');
        $data['qpeminjaman'] = $this->mpeminjaman->get_allpeminjaman();
        $this->load->library('pdf');
        $this->pdf->setPaper('A4', 'landscape');
        $this->pdf->filename = "Data-Peminjaman-Pustaka-20.pdf";
        $this->pdf->load_view('vpeminjaman_pdf', $data);
    }
}
