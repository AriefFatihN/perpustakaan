<head>
    <title>Data Anggota PDF</title>
</head>
<h2>
    <center>Data Anggota di Pustaka 20</center>
</h2>
<hr />
<table border="1" width="100%" style="text-align:center;">
    <tr>
        <th>No</th>
        <th>NISN</th>
        <th>Nama Lengkap</th>
        <th>Kelas</th>
        <th>Jenis Kelamin</th>
        <th>Agama</th>
    </tr>
    <?php
    $no = 1;
    foreach ($qmember as $rowmember) {
    ?>
        <tr>
            <td><?php echo $no++; ?></td>
            <td style="text-align: left; padding: 5px 3px 5px 7px"><?php echo $rowmember->nisn_member; ?></td>
            <td style="text-align: left; padding: 5px 3px 5px 7px"><?php echo $rowmember->nama_member; ?></td>
            <td style="text-align: left; padding: 5px 3px 5px 7px"><?php echo $rowmember->kelas_member; ?></td>
            <td><?php echo $rowmember->kelamin_member; ?></td>
            <td><?php echo $rowmember->agama_member; ?></td>
        </tr>
    <?php
    }
    ?>
</table>