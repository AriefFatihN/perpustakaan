<!-- start page content -->
<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<div class="page-title-breadcrumb">
				<div class=" pull-left">
					<div class="page-title">Data Buku</div>
				</div>
				<ol class="breadcrumb page-breadcrumb pull-right">
					<li><i class="fa fa-dashboard"></i>&nbsp;<a class="parent-item" href="index.php">Dashboard</a>&nbsp;<i class="fa fa-angle-right"></i>
					</li>
					<li class="active">Data Buku</li>
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
														<a href="<?= base_url() ?>cbuku/form/add" id="addRow" class="btn btn-dark">
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
                                                            <a href="<?= base_url() ?>cbuku/pdf" class="dropdown-item text-white bg-dark btn-sm" target="blank" style="margin-right: 40px; padding: 7% 9% 7% 7%; text-align: right;">
                                                                Ekspor PDF <i class="fa fa-file-pdf-o"></i></a>
                                                            <a href="<?= base_url() ?>cbuku/excel" class="dropdown-item text-white bg-dark btn-sm" style="margin-right: 40px; padding: 7% 9% 7% 7%; text-align: right;">
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
														<th style="width:  13%">ISBN</th>
														<th>Judul</th>
														<th>Penerbit</th>
														<th style="width:  12%">Pengarang</th>
														<th style="width:  5%">Tahun</th>
														<th style="width:  5%">Jml</th>
														<th>Rak</th>
														<th>Aksi</th>

													</tr>
												</thead>
												<tbody>
													<?php if (empty($qbuku)) { ?>
														<tr>
															<td>Kosong</td>
															<td colspan="6">-</td>
														</tr>
														<?php } else {

														foreach ($qbuku as $rowbuku) {
														?>
															<tr>
																<td>
																	<?= $rowbuku->kode_buku ?>
																</td>
																<td><a href="<?= base_url() ?>cbuku/detail_buku/<?= $rowbuku->buku_id ?>"><?= $rowbuku->judul ?></a>
																</td>
																<td>
																	<?= $rowbuku->penerbit ?>
																</td>
																<td>
																	<?= $rowbuku->pengarang ?>
																</td>
																<td>
																	<?= $rowbuku->th_terbit ?>
																</td>
																<td>
																	<?= $rowbuku->jumlah ?>
																</td>
																<td>
																	<?= $rowbuku->nama_rak ?>
																</td>
																<td>
																	<div class="btn-group">
																		<a href="<?= base_url() ?>cbuku/form/upd/<?= $rowbuku->buku_id ?>" class="btn btn-primary" role="button">
																			<span class="fa fa-pencil"></span></a>
																		<a href="<?= base_url() ?>cbuku/del/<?= $rowbuku->buku_id ?>" class="btn btn-danger ml-2" onclick="return confirm('Hapus <?= $rowbuku->judul ?> dari database Pustaka 20?')" role="button">
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