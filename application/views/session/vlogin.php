<!DOCTYPE html>
<html>


<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="description" content="Perpustakaan" />
    <meta name="author" content="Arief Fatih Naufal" />
    <title>Perpustakaan SMPN 20 Filial Semarang</title>
    <!-- google font -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
	<!-- icons -->
    <link href="<?=base_url()?>assets/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="<?=base_url()?>/assets/iconic/css/material-design-iconic-font.min.css">
    <!-- bootstrap -->
	<link href="<?=base_url()?>/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- style -->
    <link rel="stylesheet" href="<?=base_url()?>assets/css/extra_pages.css">
	<!-- favicon -->
    <link rel="shortcut icon" href="<?=base_url()?>assets/img/favicon.ico" /> 
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
    <div class="limiter">
		<div class="container-login100 page-background"> 
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="<?php echo base_url('cuser_login/aksi_login'); ?>" method="post">
					<span class="login100-form-logo">
						<img alt="" src="<?=base_url()?>assets/img/smp20.png">
					</span>
					<span class="login100-form-title p-b-34 p-t-27">
						Admin Perpustakaan SMPN 20 Filial Semarang
					</span>
					<?php if(isset($error)) { echo $error; };  ?>
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Masuk
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
    <!-- start js include path -->
    <script src="<?=base_url()?>/assets/jquery.min.js" ></script>
    <!-- bootstrap -->
    <script src="<?=base_url()?>/assets/bootstrap/js/bootstrap.min.js" ></script>
    <script src="<?=base_url()?>/assets/login.js"></script>
    <!-- end js include path -->

</html>