<?php


if ($act == 'add_save') {
    $admin_id = "";
    $nama_admin = "";
    $username = "";
    $password = "";
} elseif ($act == 'upd_save') {
    foreach ($qdetadmin as $rowdetadmin) {
        $admin_id = $rowdetadmin->admin_id;
        $nama_admin = $rowdetadmin->nama_admin;
        $username = $rowdetadmin->username;
        $password = $rowdetadmin->password;
    }
}

?>
<!-- start page content -->
<div class="page-content-wrapper">
    <div class="page-content">
        <div class="page-bar">
            <div class="page-title-breadcrumb">
                <div class=" pull-left">
                    <div class="page-title"><?= $title ?></div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-dashboard"></i>&nbsp;<a class="parent-item" href="<?= base_url() ?>index.php">Dashboard</a>&nbsp;<i class="fa fa-angle-right"></i>
                    </li>
                    <li><a class="parent-item" href="<?= base_url() ?>cadmin">Data Admin</a>&nbsp;<i class="fa fa-angle-right"></i>
                    </li>
                    <li class="active"><?= $title ?></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="card card-box">
                    <div class="card-head">
                        <header>Informasi Detail Admin</header>
                    </div>
                    <div class="card-body" id="bar-parent">
                        <form action="<?= base_url() ?>cadmin/form/<?= $act ?>/<?= $admin_id ?>" method="post" id="form_sample_1" class="form-horizontal">
                            <div class="form-body">
                                <div class="form-group row">
                                    <label class="control-label col-md-3">Nama
                                        <span class="required"> * </span>
                                    </label>
                                    <div class="col-md-5">
                                        <input type="text" name="nama_admin" placeholder="Nama" value="<?= $nama_admin ?>" class="form-control input-height" required /> </div>
                                </div>
                                <div class="form-group row">
                                    <label class="control-label col-md-3">Username
                                        <span class="required"> * </span>
                                    </label>
                                    <div class="col-md-5">
                                        <input type="text" name="username" placeholder="Username" value="<?= $username ?>" class="form-control input-height" required /> </div>
                                </div>
                                <div class="form-group row">
                                    <label class="control-label col-md-3">Password
                                        <span class="required"> * </span>
                                    </label>
                                    <div class="col-md-5">
                                        <input type="password" name="password" placeholder="Password" value="<?= $password ?>" class="form-control input-height" required /> </div>
                                </div>
                                <div class="form-actions">
                                    <div class="row">
                                        <div class="offset-md-3 col-md-9">
                                            <button name="submit" type="submit" class="btn btn-success m-r-20"><i class="fa fa-save"></i> Simpan</button>
                                            <button name="reset" type="reset" class="btn btn-danger m-r-20"><i class="fa fa-undo"></i> Reset</button>
                                            <a href="<?= base_url() ?>cadmin" class="btn btn-primary m-r-20" role="button"><i class="fa fa-chevron-left"></i> Kembali</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>