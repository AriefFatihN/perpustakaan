<?php
function denda($tgl_dateline, $tgl_kembali)
{

	$tgl_dateline_pcs = explode("-", $tgl_dateline);
	$tgl_dateline_pcs = $tgl_dateline_pcs[2] . "-" . $tgl_dateline_pcs[1] . "-" . $tgl_dateline_pcs[0];

	$tgl_kembali_pcs = explode("-", $tgl_kembali);
	$tgl_kembali_pcs = $tgl_kembali_pcs[2] . "-" . $tgl_kembali_pcs[1] . "-" . $tgl_kembali_pcs[0];

	$selisih = strtotime($tgl_kembali_pcs) - strtotime($tgl_dateline_pcs);

	$selisih = $selisih / 86400;

	if ($selisih >= 1) {
		$hasil_tgl = floor($selisih);
	} else {
		$hasil_tgl = 0;
	}
	return $hasil_tgl;
}

?>
<!-- start page content -->
<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<div class="page-title-breadcrumb">
				<div class=" pull-left">
					<div class="page-title">Data Peminjaman</div>
				</div>
				<ol class="breadcrumb page-breadcrumb pull-right">
					<li><i class="fa fa-dashboard"></i>&nbsp;<a class="parent-item" href="index.php">Dashboard</a>&nbsp;<i class="fa fa-angle-right"></i>
					</li>
					<li class="active">Data Peminjaman</li>
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
														<a href="<?= base_url() ?>cpeminjaman/form/add" id="addRow" class="btn btn-dark">
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
                                                            <a href="<?= base_url() ?>cpeminjaman/pdf" class="dropdown-item text-white bg-dark btn-sm" target="blank" style="margin-right: 40px; padding: 7% 9% 7% 7%; text-align: right;">
                                                                Ekspor PDF <i class="fa fa-file-pdf-o"></i></a>
                                                            <a href="<?= base_url() ?>cpeminjaman/excel" class="dropdown-item text-white bg-dark btn-sm" style="margin-right: 40px; padding: 7% 9% 7% 7%; text-align: right;">
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
														<th style="width:  2%">No.</th>
														<th style="width:  16%">Peminjam</th>
														<th>Judul</th>
														<th>Jml</th>
														<th style="width:  12%">Tanggal Pinjam</th>
														<th style="width:  9%">Tanggal Kembali</th>
														<th style="width:  13%">Denda</th>
														<th>Ket.</th>
														<th>Aksi</th>
													</tr>
												</thead>
												<tbody>
													<?php if (empty($qpeminjaman)) { ?>
														<tr>
															<td>Kosong</td>
															<td colspan="6">-</td>
														</tr>
														<?php } else {
														$num = 0;
														foreach ($qpeminjaman as $rowpeminjaman) {
															$num++; ?>
															<tr>
																<td>
																	<?= $num ?>
																</td>
																<td>
																	<?= $rowpeminjaman->nama_member ?>
																</td>
																<td><a href="<?= base_url() ?>cbuku/detail_buku/<?= $rowpeminjaman->buku_id ?>"><?= $rowpeminjaman->judul ?></a>
																</td>

																<td>
																	<?= $rowpeminjaman->jumlah_pinjam ?>
																</td>
																<td>
																	<?php
																	$tstmp = strtotime($rowpeminjaman->tgl_pinjam);
																	echo $tgl_p = date('d-m-Y', $tstmp);
																	?>
																</td>
																<td>
																	<?php
																	$tstmp2 = strtotime($rowpeminjaman->tgl_kembali);
																	echo $tgl_k = date('d-m-Y', $tstmp2);
																	?>
																</td>
																<td id="tlt">
																	<?php
																	$denda = 500;
																	$tgl_hrskmbl = $rowpeminjaman->tgl_kembali;
																	$tgl_kmbl = date('Y-m-d');
																	$telat =
																		denda($tgl_hrskmbl, $tgl_kmbl);
																	$dendanya = $telat * $denda;
																	if ($telat > 0) {
																		echo "<center>( $telat hari x <i>Rp</i> $denda ) = </center>";
																		echo "<center><b><font color='#10A83C'><i>Rp</i> $dendanya</font></b></center>";
																	} else {
																		echo "<center><b><font color='#10A83C'><i>Rp</i> $telat</font></b></center>";
																	}
																	?>
																</td>
																<td>
																	<?= $rowpeminjaman->ket_pinjam ?>
																</td>
																<td>
																	<div class="btn-group">
																		<a href="<?= base_url() ?>cpeminjaman/form/upd_pengembalian/<?= $rowpeminjaman->peminjaman_id ?>" class="btn btn-warning" onclick="return confirm('Apakah buku <?= $rowpeminjaman->judul ?> dari peminjam <?= $rowpeminjaman->nama_member ?> telah dikembalikan?')" title="Pengembalian" role="button">
																			<span class="fa fa-refresh"></span></a>
																		<a href="<?= base_url() ?>cpeminjaman/form/upd/<?= $rowpeminjaman->peminjaman_id ?>" class="btn btn-primary ml-2" title="Edit" role="button">
																			<span class="fa fa-pencil"></span></a>
																		<a href="<?= base_url() ?>cpeminjaman/del/<?= $rowpeminjaman->peminjaman_id ?>" class="btn btn-danger ml-2" onclick="return confirm('Hapus data peminjaman <?= $rowpeminjaman->nama_member ?> dari Pustaka 20?')" title="Hapus" role="button">
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