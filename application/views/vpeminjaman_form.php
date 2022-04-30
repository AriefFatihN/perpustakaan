<?php


if ($act == 'add_save') {
	$peminjaman_id = "";
	$member_id = "";
	$buku_id = "";
	$jumlah_pinjam = "";
	$status = "";
	$ket_pinjam = "";
} elseif ($act == 'upd_save') {
	foreach ($qdetpeminjaman as $rowdetpeminjaman) {
		$peminjaman_id = $rowdetpeminjaman->peminjaman_id;
		$member_id = $rowdetpeminjaman->member_id;
		$buku_id = $rowdetpeminjaman->buku_id;
		$jumlah_pinjam = $rowdetpeminjaman->jumlah_pinjam;
		$status = $rowdetpeminjaman->status;
		$ket_pinjam = $rowdetpeminjaman->ket_pinjam;
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
					<li><a class="parent-item" href="<?= base_url() ?>cpeminjaman">Data Peminjaman</a>&nbsp;<i class="fa fa-angle-right"></i>
					</li>
					<li class="active"><?= $title ?></li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<div class="card card-box">
					<div class="card-head">
						<header>Informasi Detail Peminjaman</header>
					</div>
					<div class="card-body" id="bar-parent">
						<form action="<?= base_url() ?>cpeminjaman/form/<?= $act ?>/<?= $peminjaman_id ?>" method="post" id="form_sample_1" class="form-horizontal">
							<div class="form-body">
								<div class="form-group row">
									<label class="control-label col-md-3">Anggota
										<span class="required"> * </span>
									</label>
									<div class="col-md-5">
										<select class="form-control select2" name="member_id">
											<?php foreach ($qmember as $rm) {
												if ($rm->member_id == $member_id) {
													echo "<option value=" . $rm->member_id . " selected>" . $rm->nama_member . " - " . $rm->kelas_member . "</option>";
												} else {
													echo "<option value=" . $rm->member_id . ">" . $rm->nama_member . " - " . $rm->kelas_member . "</option>";
												}
											}
											?>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label class="control-label col-md-3">Buku
										<span class="required"> * </span>
									</label>
									<div class="col-md-5">
										<select class="form-control select2" name="buku_id">
											<?php foreach ($qbuku as $rb) {
												if ($rb->buku_id == $buku_id || $rb->jumlah > 0) {
													echo "<option value=" . $rb->buku_id . " selected>Tersisa " . $rb->jumlah . ' - ' . $rb->judul . ' [' . $rb->kode_buku . ']' . "</option>";
												}
											}
											?>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label class="control-label col-md-3">Jumlah Pinjam
										<span class="required"> * </span>
									</label>
									<div class="col-md-5">
										<input type="text" name="jumlah_pinjam" placeholder="Jumlah" value="<?= $jumlah_pinjam ?>" class="form-control input-height" required /> </div>
								</div>
								<div class="form-group row" hidden>
									<label class="control-label col-md-3">Status
										<span class="required"> * </span>
									</label>
									<div class="col-md-5">
										<select class="form-control input-height selectpicker" data-live-search="true" name="status">
											<option value="Pinjam" selected>Pinjam</option>
											<option value="Kembali">Kembali</option>
										</select>
									</div>
								</div>

								<div class="form-group row">
									<label class="control-label col-md-3">Keterangan Pinjam
									</label>
									<div class="col-md-5">
										<input type="text" name="ket_pinjam" placeholder="Keterangan Peminjaman (Tidak Wajib)" value="<?= $ket_pinjam ?>" class="form-control input-height" /> </div>
								</div>

								<div class="form-actions">
									<div class="row">
										<div class="offset-md-3 col-md-9">
											<button name="submit" type="submit" class="btn btn-success m-r-20"><i class="fa fa-save"></i> Simpan</button>
											<button name="reset" type="reset" class="btn btn-danger m-r-20"><i class="fa fa-undo"></i> Reset</button>
											<a href="<?= base_url() ?>cpeminjaman" class="btn btn-primary m-r-20" role="button"><i class="fa fa-chevron-left"></i> Kembali</a>
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