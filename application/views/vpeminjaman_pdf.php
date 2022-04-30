<head>
    <title>Data Peminjaman PDF</title>
</head>
<h2>
    <center>Data Peminjaman di Pustaka 20</center>
</h2>
<hr />
<table border="1" width="100%" style="text-align:center;">
    <tr>
        <th>No</th>
        <th>Nama Peminjam</th>
        <th>Judul Buku</th>
        <th>Jumlah</th>
        <th>Tanggal Pinjam</th>
        <th>Tanggal Kembali</th>
    </tr>
    <?php
    $no = 1;
    foreach ($qpeminjaman as $rowpeminjaman) {
    ?>
        <tr>
            <td><?php echo $no++; ?></td>
            <td style="text-align: left; padding: 5px 3px 5px 7px"><?php echo $rowpeminjaman->nama_member; ?></td>
            <td style="text-align: left; padding: 5px 3px 5px 7px"><?php echo $rowpeminjaman->judul; ?></td>
            <td><?php echo $rowpeminjaman->jumlah_pinjam; ?></td>
            <td><?php echo $rowpeminjaman->tgl_pinjam; ?></td>
            <td><?php echo $rowpeminjaman->tgl_kembali; ?></td>
        </tr>
    <?php
    }
    ?>
</table>