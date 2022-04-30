<head>
    <title>Data Buku PDF</title>
</head>
<h2>
    <center>Data Buku di Pustaka 20</center>
</h2>
<hr />
<table border="1" width="100%" style="text-align:center;">
    <tr>
        <th>No</th>
        <th>ISBN</th>
        <th>Judul Buku</th>
        <th>Penerbit</th>
        <th>Pengarang</th>
        <th>Tahun Terbit</th>
        <th>Jumlah</th>
        <th>Rak</th>
    </tr>
    <?php
    $no = 1;
    foreach ($qbuku as $rowbuku) {
    ?>
        <tr>
            <td><?php echo $no++; ?></td>
            <td style="text-align: left; padding: 5px 3px 5px 7px"><?php echo $rowbuku->kode_buku; ?></td>
            <td style="text-align: left; padding: 5px 3px 5px 7px"><?php echo $rowbuku->judul; ?></td>
            <td style="text-align: left; padding: 5px 3px 5px 7px"><?php echo $rowbuku->penerbit; ?></td>
            <td style="text-align: left; padding: 5px 3px 5px 7px"><?php echo $rowbuku->pengarang; ?></td>
            <td><?php echo $rowbuku->th_terbit; ?></td>
            <td><?php echo $rowbuku->jumlah; ?></td>
            <td><?php echo $rowbuku->rak_id; ?></td>
        </tr>
    <?php
    }
    ?>
</table>