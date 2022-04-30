<head>
    <title>Data Admin PDF</title>
</head>
<h2>
    <center>Data Admin di Pustaka 20</center>
</h2>
<hr />
<table border="1" width="100%" style="text-align:center;">
    <tr>
        <th>No</th>
        <th>Nama</th>
        <th>Username</th>
    </tr>
    <?php
    $no = 1;
    foreach ($qadmin as $rowadmin) {
    ?>
        <tr>
            <td><?php echo $no++; ?></td>
            <td style="text-align: left; padding: 5px 3px 5px 7px"><?php echo $rowadmin->nama_admin; ?></td>
            <td><?php echo $rowadmin->username; ?></td>
        </tr>
    <?php
    }
    ?>
</table>