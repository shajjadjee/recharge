<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
	crossorigin="anonymous" />
<link rel="stylesheet" href="./assets/css/login.css" />
<title>User Sign up</title>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card">
				<div class="card-header">
					<h3>Sign UP</h3>
					<div class="d-flex justify-content-end social_icon">
						<span><i class="fa fa-facebook-square"></i></span> <span><i
							class="fa fa-google-plus-square"></i></span> <span><i
							class="fa fa-twitter-square"></i></span>
					</div>
				</div>
				<div class="card-body">
					<form>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-user"></i></span>
							</div>
							<input type="text" class="form-control" placeholder="username">

						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-key"></i></span>
							</div>
							<input type="password" class="form-control"
								placeholder="password">
						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-phone"></i></span>
							</div>
							<input type="text" class="form-control" placeholder="01******">
						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i
									class="fa fa-envelope-o"></i></span>
							</div>
							<input type="email" class="form-control" placeholder="@">
						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i
									class="fa fa-address-card-o"></i></span>
							</div>
							<input type="text" class="form-control" placeholder="address">
						</div>
						<div class="form-group">
							<input type="submit" value="Signup"
								class="btn float-right login_btn">
						</div>
					</form>
				</div>

			</div>
		</div>

	</div>
	<jsp:include page="layout/footer.jsp" />