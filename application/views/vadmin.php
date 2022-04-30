<!-- start page content -->
<div class="page-content-wrapper">
    <div class="page-content">
        <div class="page-bar">
            <div class="page-title-breadcrumb">
                <div class=" pull-left">
                    <div class="page-title">Data Admin</div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-dashboard"></i>&nbsp;<a class="parent-item" href="index.php">Dashboard</a>&nbsp;<i class="fa fa-angle-right"></i>
                    </li>
                    <li class="active">Data Admin</li>
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
                                                        <a href="<?= base_url() ?>cadmin/form/add" id="addRow" class="btn btn-dark">
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
                                                            <a href="<?= base_url() ?>cadmin/pdf" class="dropdown-item text-white bg-dark btn-sm" target="blank" style="margin-right: 40px; padding: 7% 9% 7% 7%; text-align: right;">
                                                                Ekspor PDF <i class="fa fa-file-pdf-o"></i></a>
                                                            <a href="<?= base_url() ?>cadmin/excel" class="dropdown-item text-white bg-dark btn-sm" style="margin-right: 40px; padding: 7% 9% 7% 7%; text-align: right;">
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
                                                        <th style="width: 25%">Nama</th>
                                                        <th style="width: 25%">Username</th>
                                                        <th style="width:  1%">Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php if (empty($qadmin)) { ?>
                                                        <tr>
                                                            <td colspan="6">-</td>
                                                        </tr>
                                                        <?php } else {
                                                        $num = 0;
                                                        foreach ($qadmin as $rowmember) {
                                                            $num++; ?>
                                                            <tr>
                                                                <td>
                                                                    <?= $num ?>
                                                                </td>
                                                                <td>
                                                                    <?= $rowmember->nama_admin ?>
                                                                </td>
                                                                <td>
                                                                    <?= $rowmember->username ?>
                                                                </td>
                                                                <td>
                                                                    <div class="btn-group">
                                                                        <a href="<?= base_url() ?>cadmin/form/upd/<?= $rowmember->admin_id ?>" class="btn btn-primary" title="Edit" role="button">
                                                                            <span class="fa fa-pencil"></span></a>
                                                                        <a href="<?= base_url() ?>cadmin/del/<?= $rowmember->admin_id ?>" class="btn btn-danger ml-2" onclick="return confirm('Hapus admin <?= $rowmember->nama_admin ?> dari data admin Pustaka 20?')" title='Hapus' role="button">
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