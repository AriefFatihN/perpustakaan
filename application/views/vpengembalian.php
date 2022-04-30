<!-- start page content -->
<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<div class="page-title-breadcrumb">
				<div class=" pull-left">
					<div class="page-title">Data Pengembalian</div>
				</div>
				<ol class="breadcrumb page-breadcrumb pull-right">
					<li><i class="fa fa-dashboard"></i>&nbsp;<a class="parent-item" href="index.php">Dashboard</a>&nbsp;<i class="fa fa-angle-right"></i>
					</li>
					<li class="active">Data Pengembalian</li>
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
													</div>
												</div>
												<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                    <div class="dropdown">
                                                        <button class="btn btn-dark dropdown-toggle float-right" type="button" data-toggle="dropdown">
                                                            Ekspor <i class="fa fa-chevron-down"></i>
                                                        </button>
                                                        <div class="dropdown-menu" style="margin: 1% 8% 10px 10px;">
                                                            <a href="<?= base_url() ?>cpengembalian/pdf" class="dropdown-item text-white bg-dark btn-sm" target="blank" style="margin-right: 40px; padding: 7% 9% 7% 7%; text-align: right;">
                                                                Ekspor PDF <i class="fa fa-file-pdf-o"></i></a>
                                                            <a href="<?= base_url() ?>cpengembalian/excel" class="dropdown-item text-white bg-dark btn-sm" style="margin-right: 40px; padding: 7% 9% 7% 7%; text-align: right;">
                                                                Ekspor Spreadsheet <i class="fa fa-file-excel-o"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
											</div>
										</header>
									</div>
									<div class="card-body ">
										<div class="table-scrollable">
											<table class="table table-hover table-checkable order-column full-width" id="example4" style="width:100%;">
												<thead>
													<tr>
														<th>No.</th>
														<th style="width: 19%;">Anggota</th>
														<th style="width: 33%;">Judul</th>
														<th style="width: 7%;">Jml</th>
														<th style="width: 12%;">Tanggal Pinjam</th>
														<th style="width: 12%;">Tanggal Pengembalian</th>
														<th>Status</th>


													</tr>
												</thead>
												<tbody>
													<?php if (empty($qpengembalian)) { ?>
														<tr>
															<td>Kosong</td>
															<td colspan="6">-</td>
														</tr>
														<?php } else {
														$num = 0;
														foreach ($qpengembalian as $rowpengembalian) {
															$num++; ?>
															<tr>
																<td>
																	<?= $num ?>
																</td>
																<td>
																	<?= $rowpengembalian->nama_member ?>
																</td>
																<td><a href="<?= base_url() ?>cbuku/detail_buku/<?= $rowpengembalian->buku_id ?>"><?= $rowpengembalian->judul ?></a>
																</td>

																<td>
																	<?= $rowpengembalian->jumlah_pinjam ?>
																</td>
																<td>
																	<?php
																	$tstmp = strtotime($rowpengembalian->tgl_pinjam);
																	echo $tgl_p = date('d-m-Y', $tstmp);
																	?>
																</td>
																<td>
																	<?php
																	$tstmp2 = strtotime($rowpengembalian->tgl_pengembalian);
																	echo $tgl_k = date('d-m-Y', $tstmp2);
																	?>
																</td>
																<td>
																	<button id="btnPinjam" class="btn btn-circle btn-success btn-xs m-b-10"><?= $rowpengembalian->status ?></button>
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

<!-- <script>

var btn_pinjam = document.getElementById('btnPinjam').value;
var telate = document.getElementById('tlt').textContent;
var ganti;

if (telate === '0 hari &nbsp | &nbsp Baru Meminjam') {
	document.getElementById('btnPinjam').className = "btn btn-circle btn-info btn-xs m-b-10";
}else {
	document.getElementById('btnPinjam').className = "btn btn-circle btn-warning btn-xs m-b-10";
}

</script> -->