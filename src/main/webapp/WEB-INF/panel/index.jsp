<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet" href="../assets/css/adminlayout2.css">
<title>Online Mobile rechrage</title>
</head>
<body>
	<header>
		<div class="header">
			<nav class="navbar navbar-default navbar-fixed-top affix-top">
				<div class="navbar-header page-scroll">
					<a class="navbar-brand" href="/recharge/top-up"><img
						class="hide-in-sticky" src="../assets/images/logo.png"></a>
				</div>
				<a class="navbar-brand" href="/recharge">Recharge</a> <a
					class="navbar-brand" href="#">Operators</a> <a class="navbar-brand"
					href="#">Pricing</a> <a class="btn btn-primary" href="login"
					style="margin-top: 3px;"> SIGN IN </a>
			</nav>
			<nav class="navbar bg-primary navbar-fixed-top affix-top"></nav>
		</div>
	</header>
	<div class="container">
		<div class="row justify-content-center">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100" height="320px" width="1140px"
							src="https://assetliteapi.banglalink.net/uploads/assetlite/images/slider-images/1q2SLMIeUSn5dFfLJtxeFSZRRmezIZFQm9Bf589M.jpeg"
							alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" height="320px" width="1140px"
							src="http://www.teletalk.com.bd/storage/app/uploads/public/5fe/cd4/01d/5fecd401dd469394812204.jpg"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" height="320px" width="1140px"
							src="../assets/images/robi.jpg" alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleControls"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
			<br> <br>
			<section class="app-download-section p-0">
				<div class="container">
					<div class="row justify-content-center">
						<form class="form-group" method="post">
							<!---->
							<!---->
							<div class="margin_setter"></div>
							<div class="ng-invalid ng-touched ng-dirty">
								<div class="">
									<!---->
									<label>Mobile Number</label>
									<div class="form-group">
										<input aria-multiline="false" autocapitalize="none"
											autocorrect="off" class="form-control"
											formcontrolname="phone" id="typeahead-basic" role="combobox"
											type="text" placeholder="Mobile Number" maxlength="11"
											autocomplete="off" aria-autocomplete="list"
											aria-expanded="false">
										<!---->

									</div>
									<br> <label class="select-label">Select Operator</label>
									<div class="form-group">
										<select class="form-control" formcontrolname="operator"
											id="telecom-operator"><option value="">Select
												Operator</option>
											<option value="1">Grameenphone</option>
											<option value="2">Banglalink</option>
											<option value="3">Robi</option>
											<option value="5">Teletalk</option>
											<option value="6">Airtel</option></select>
										<!---->

										<!---->
									</div>
									<br> <label class="select-label">Select Connection
										Type</label>
									<div class="form-group">
										<select class="form-control" formcontrolname="type"
											id="connection-type"><option value="">Select
												Connection Type</option>
											<option value="prepaid">Prepaid</option>
											<option value="postpaid">Postpaid</option>
											<!---->
											<option value="skitto">Skitto</option></select>
										<!---->

									</div>
									<br> <label>Amount (TK)</label>
									<div class="form-group">
										<input class="form-control" formcontrolname="amount"
											maxlength="4" minlength="2" type="number"
											placeholder="Amount (TK)">
										<!---->

										<br>
										<button class="btn btn-primary" name="button" type="submit">Recharge
										</button>
									</div>
									
								</div>
							</div>

						</form>
					</div>
				</div>
			</section>
		</div>
	</div>

	<div class="footer-below">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p _ngcontent-serverapp-c9="">© recharge . All Rights Reserved.</p>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</body>
</html>