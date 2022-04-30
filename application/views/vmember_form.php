<?php


if ($act == 'add_save') {
    $member_id = "";
    $nisn_member = "";
    $nama_member = "";
    $kelas_member = "";
    $kelamin_member = "";
    $agama_member = "";
} elseif ($act == 'upd_save') {
    foreach ($qdetmember as $rowdetmember) {
        $member_id = $rowdetmember->member_id;
        $nisn_member = $rowdetmember->nisn_member;
        $nama_member = $rowdetmember->nama_member;
        $kelas_member = $rowdetmember->kelas_member;
        $kelamin_member = $rowdetmember->kelamin_member;
        $agama_member = $rowdetmember->agama_member;
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
                    <li><a class="parent-item" href="<?= base_url() ?>cmember">Data Anggota</a>&nbsp;<i class="fa fa-angle-right"></i>
                    </li>
                    <li class="active"><?= $title ?></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="card card-box">
                    <div class="card-head">
                        <header>Informasi Detail Anggota</header>
                    </div>
                    <div class="card-body" id="bar-parent">
                        <form action="<?= base_url() ?>cmember/form/<?= $act ?>/<?= $member_id ?>" method="post" id="form_sample_1" class="form-horizontal">
                            <div class="form-body">
                                <div class="form-group row">
                                    <label class="control-label col-md-3">NISN
                                        <span class="required"> * </span>
                                    </label>
                                    <div class="col-md-5">
                                        <input type="text" name="nisn_member" placeholder="NISN" value="<?= $nisn_member ?>" class="form-control input-height" required /> </div>
                                </div>
                                <div class="form-group row">
                                    <label class="control-label col-md-3">Nama Lengkap
                                        <span class="required"> * </span>
                                    </label>
                                    <div class="col-md-5">
                                        <input type="text" name="nama_member" placeholder="Nama Lengkap" value="<?= $nama_member ?>" class="form-control input-height" required /> </div>
                                </div>
                                <div class="form-group row">
                                    <label class="control-label col-md-3">Kelas
                                        <span class="required"> * </span>
                                    </label>
                                    <div class="col-md-5">
                                        <input type="text" name="kelas_member" placeholder="Kelas" value="<?= $kelas_member ?>" class="form-control input-height" required /> </div>
                                </div>
                                <div class="form-group row">
                                    <label class="control-label col-md-3">Jenis Kelamin
                                        <span class="required"> * </span>
                                    </label>
                                    <div class="col-md-5">
                                        <input style="vertical-align: middle; height: 20px; width: 20px;" type="radio" name="kelamin_member" value="Laki-laki" required/>
                                        <label style="vertical-align: middle; height: 17px; padding: 0px 25px 0px 0px">Laki-Laki</label>
                                        <input style="vertical-align: middle; height: 20px; width: 20px;"type="radio" name="kelamin_member" value="Perempuan" required/>
                                        <label style="vertical-align: middle; height: 17px;">Perempuan</label>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="control-label col-md-3">Agama
                                        <span class="required"> * </span>
                                    </label>
                                    <div class="col-md-5">
                                        <input type="text" name="agama_member" placeholder="Agama" value="<?= $agama_member ?>" class="form-control input-height" /> </div>
                                </div>
                                <div class="form-actions">
                                    <div class="row">
                                        <div class="offset-md-3 col-md-9">
                                            <button name="submit" type="submit" class="btn btn-success m-r-20"><i class="fa fa-save"></i> Simpan</button>
                                            <button name="reset" type="reset" class="btn btn-danger m-r-20"><i class="fa fa-undo"></i> Reset</button>
                                            <a href="<?= base_url() ?>cmember" class="btn btn-primary m-r-20" role="button"><i class="fa fa-chevron-left"></i> Kembali</a>
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