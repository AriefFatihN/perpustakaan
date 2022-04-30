<!-- start page content -->
<div class="page-content-wrapper">
    <div class="page-content">
        <div class="page-bar">
            <div class="page-title-breadcrumb">
                <div class=" pull-left">
                    <div class="page-title">Data Anggota</div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-dashboard"></i>&nbsp;<a class="parent-item" href="index.php">Dashboard</a>&nbsp;<i class="fa fa-angle-right"></i>
                    </li>
                    <li class="active">Data Anggota</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tab-content">
                    <div class="tab-pane active fontawesome-demo" id="tab1">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card card-topline-red">
                                    <div class="card-head">
                                        <header>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                    <div class="btn-group">
                                                        <a href="<?= base_url() ?>cmember/form/add" id="addRow" class="btn btn-dark">
                                                            Tambah <i class="fa fa-plus"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                    <div class="dropdown">
                                                        <button class="btn btn-dark dropdown-toggle float-right" type="button" data-toggle="dropdown">
                                                            Ekspor <i class="fa fa-chevron-down"></i>
                                                        </button>
                                                        <div class="dropdown-menu" style="margin: 1% 8% 10px 10px;">
                                                            <a href="<?= base_url() ?>cmember/pdf" class="dropdown-item text-white bg-dark btn-sm" target="blank" style="margin-right: 40px; padding: 7% 9% 7% 7%; text-align: right;">
                                                                Ekspor PDF <i class="fa fa-file-pdf-o"></i></a>
                                                            <a href="<?= base_url() ?>cmember/excel" class="dropdown-item text-white bg-dark btn-sm" style="margin-right: 40px; padding: 7% 9% 7% 7%; text-align: right;">
                                                                Ekspor Spreadsheet <i class="fa fa-file-excel-o"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </header>
                                    </div>
                                    <div class="card-body ">
                                        <div class="table-scrollable">
                                            <table class="table table-hover table-checkable order-column" id="example4" style="width:100%;">
                                                <thead>
                                                    <tr>
                                                        <th style="width:  2%">No.</th>
                                                        <th style="width: 15%">NISN</th>
                                                        <th style="width:  45%">Nama Lengkap</th>
                                                        <th style="width:  15%">Kelas</th>
                                                        <th style="width:  15%">Jenis Kelamin</th>
                                                        <th style="width:  25%">Agama</th>
                                                        <th style="width:  1%">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php if (empty($qmember)) { ?>
                                                        <tr>
                                                            <td colspan="6">-</td>
                                                        </tr>
                                                        <?php } else {
                                                        $num = 0;
                                                        foreach ($qmember as $rowmember) {
                                                            $num++; ?>
                                                            <tr>
                                                                <td>
                                                                    <?= $num ?>
                                                                </td>
                                                                <td>
                                                                    <?= $rowmember->nisn_member ?>
                                                                </td>
                                                                <td>
                                                                    <?= $rowmember->nama_member ?>
                                                                </td>
                                                                <td>
                                                                    <?= $rowmember->kelas_member ?>
                                                                </td>
                                                                <td>
                                                                    <?= $rowmember->kelamin_member ?>
                                                                </td>
                                                                <td>
                                                                    <?= $rowmember->agama_member ?>
                                                                </td>
                                                                <td>
                                                                    <div class="btn-group">
                                                                        <a href="<?= base_url() ?>cmember/form/upd/<?= $rowmember->member_id ?>" class="btn btn-primary" title="Edit" role="button">
                                                                            <span class="fa fa-pencil"></span></a>
                                                                        <a href="<?= base_url() ?>cmember/del/<?= $rowmember->member_id ?>" class="btn btn-danger ml-2" onclick="return confirm('Hapus <?= $rowmember->nama_member ?> dari data anggota Pustaka 20?')" title='Hapus' role="button">
                                                                            <span class="fa fa-trash"></span></a>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                    <?php }
                                                    } ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>