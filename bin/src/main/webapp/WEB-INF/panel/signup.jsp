<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
					<form action="${contextPath}/signup" method="post">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-user"></i></span>
							</div>
							<input type="text" name="username" class="form-control"
								id="username" placeholder="username">

						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-key"></i></span>
							</div>
							<input type="password" name="password" class="form-control"
								id="password" placeholder="password">
						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-phone"></i></span>
							</div>
							<input type="text" name="mobile" class="form-control" id="mobile"
								placeholder="01******">
						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i
									class="fa fa-envelope-o"></i></span>
							</div>
							<input type="email" name="email" class="form-control" id="email"
								placeholder="@">
						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i
									class="fa fa-address-card-o"></i></span>
							</div>
							<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender"
								id="inlineRadio1" value="male"> <label
								class="form-check-label" for="inlineRadio1">Male</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender"
								id="inlineRadio2" value="female"> <label
								class="form-check-label" for="inlineRadio2">Female</label>
						</div>
						</div>
						<div class="form-group">
							<input type="submit" value="Signup"
								class="btn float-right login_btn">
							<c:if test='${status.equals("success") }'>
								<div class="alert alert-primary" role="alert">${message}</div>
							</c:if>

							<c:if test='${status.equals("error") }'>
								<div class="alert alert-danger" role="alert">${message}</div>
							</c:if>
						</div>
					</form>
				</div>

			</div>
		</div>

	</div>
	<jsp:include page="layout/footer.jsp" />