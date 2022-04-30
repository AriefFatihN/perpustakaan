<?php

if ($this->session->userdata('status') != "login") {
	redirect(base_url("cuser_login"));
}

?>
<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<meta name="description" content="Responsive Admin Template" />
	<meta name="author" content="RedstarHospital" />
	<title>Perpustakaan SMPN 20 Filial Semarang</title>
	<!-- google font -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
	<!-- icons -->
	<link href="<?= base_url() ?>assets/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url() ?>assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<!--bootstrap -->
	<link rel="stylesheet" href="htp://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/css/bootstrap-select.min.css" />
	<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>
	<link href="<?= base_url() ?>assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!-- sweet alert -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/sweet-alert/sweetalert.min.css">
	<!-- data tables -->
	<link href="<?= base_url() ?>assets/datatables/plugins/bootstrap/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
	<!-- Material Design Lite CSS -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/material/material.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/css/material_style.css">
	<!-- Theme Styles -->
	<link href="<?= base_url() ?>assets/css/theme_style.css" rel="stylesheet" id="rt_style_components" type="text/css" />
	<link href="<?= base_url() ?>assets/css/plugins.min.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url() ?>assets/css/style.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url() ?>assets/css/responsive.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url() ?>assets/css/theme-color.css" rel="stylesheet" type="text/css" />
	<!-- dropzone -->
	<link href="<?= base_url() ?>assets/dropzone/dropzone.css" rel="stylesheet" media="screen">
	<!--tagsinput-->
	<link href="<?= base_url() ?>assets/jquery-tags-input/jquery-tags-input.css" rel="stylesheet">
	<!--select2-->
	<link href="<?= base_url() ?>assets/select2/css/select2.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url() ?>assets/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!-- favicon -->
	<link rel="shortcut icon" href="assets/img/favicon.ico">
</head>
<!-- END HEAD -->

<body class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-dark dark-sidebar-color logo-dark">
	<div class="page-wrapper">
		<!-- start header -->
		<div class="page-header navbar navbar-fixed-top">
			<div class="page-header-inner ">
				<!-- logo start -->
				<div class="page-logo">
					<a href="<?= site_url() ?>chome">
						<span class="logo-default"><i class="fa fa-book"></i> Pustaka 20</span> </a>
				</div>
				<!-- logo end -->
				<ul class="nav navbar-nav navbar-left in">
					<li><a href="#" class="menu-toggler sidebar-toggler"><i class="icon-menu"></i></a></li>
				</ul>
				<!-- start mobile menu -->
				<a href="#" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
					<span></span>
				</a>
				<!-- end mobile menu -->
				<!-- start header menu -->
				<div class="top-menu">
					<ul class="nav navbar-nav pull-right">
						<!-- start manage user dropdown -->
						<li class="dropdown dropdown-user">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
								<img alt="" class="img-circle " src="<?= base_url() ?>assets/img/smp20.png" />
								<span class="username username-hide-on-mobile"> <?php echo $this->session->userdata("nama_admin"); ?> </span>
								<i class="fa fa-angle-down"></i>
							</a>
							<ul class="dropdown-menu dropdown-menu-default">
								<li>
									<a href="<?= base_url() ?>cuser_login/logout">
										<i class="fa fa-sign-out fa-5x"></i> Keluar </a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- end header -->

		<!-- start page container -->
		<div class="page-container">
			<!-- start sidebar menu -->
			<div class="sidebar-container">
				<div class="sidemenu-container navbar-collapse collapse fixed-menu">
					<div id="remove-scroll" class="left-sidemenu">
						<ul class="sidemenu  page-header-fixed" data-keep-expanded="false" data-auto-scroll="false" data-slide-speed="200" style="padding-top: 20px">
							<li class="sidebar-toggler-wrapper hide">
								<div class="sidebar-toggler">
									<span></span>
								</div>
							</li>
							<li class="sidebar-user-panel">
								<div class="user-panel">
									<div class="image">
										<img src="<?= base_url() ?>assets/img/smp20.png" class="img-circle user-img-circle" alt="User Image" />
									</div>
								</div>
							</li>
							<li class="nav-item  ">
								<a href="<?= site_url('chome') ?>" class="nav-link nav-toggle">
									<i class="fa fa-tachometer"></i>
									<span class="title">Dashboard</span>
								</a>
							</li>
							<li class="nav-item  ">
								<a href="<?= site_url('cmember') ?>" class="nav-link nav-toggle">
									<i class="fa fa-group"></i>
									<span class="title">Data Anggota</span>
								</a>
							</li>
							<li class="nav-item  ">
								<a href="<?= site_url('cbuku') ?>" class="nav-link nav-toggle">
									<i class="fa fa-book"></i>
									<span class="title">Data Buku</span>
								</a>
							</li>
							<li class="nav-item  ">
								<a href="<?= site_url('cpeminjaman') ?>" class="nav-link nav-toggle">
									<i class="fa fa-shopping-cart"></i>
									<span class="title">Data Peminjaman</span>
								</a>
							</li>
							<li class="nav-item  ">
								<a href="<?= site_url('cpengembalian') ?>" class="nav-link nav-toggle">
									<i class="fa fa-refresh"></i>
									<span class="title">Data Pengembalian</span>
								</a>
							</li>
							<li class="nav-item  ">
								<a href="<?= site_url('cadmin') ?>" class="nav-link nav-toggle">
									<i class="fa fa-unlock-alt"></i>
									<span class="title">Data Admin</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- end sidebar menu -->