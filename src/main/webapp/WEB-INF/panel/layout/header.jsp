<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet" href="../assets/css/adminlayout.css">
<title>Dashboard</title>
</head>
<body>
	<header>
		<div class="header" style="background-color: #043acc; color: white;text-align: center;">
			<nav
				class="navbar navbar-dark sticky-top flex-md-nowrap p-0 shadow "
				pcoded-header-position="fixed">
				<a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="/deshboard">
					User Dashboard</a>
				<button class="navbar-toggler position-absolute d-md-none collapsed"
					type="button" data-toggle="collapse" data-target="#sidebarMenu"
					aria-controls="sidebarMenu" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<a style="color: white;" class="nav-link" href="/wallet"> <i
					class="fa fa-wallet" aria-hidden="true"></i> Wallet ${blnc} tk</a>

				<ul class="navbar-nav px-3">
					<li class="nav-item"></li>
					<li class="nav-item text-nowrap"><a style="color: white;"
						class="nav-link" href="${contextPath}/logout"><i class="fa fa-sign-out" aria-hidden="true"></i>
							Sign out</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block sidebar collapse">
				<div class="sidebar-sticky pt-3">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link" href="/deshboard">
								<span data-feather="dashboard"><i
									class="fa fa-tachometer" aria-hidden="true"></i> </span> Dashboard <span
								class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/recharge">
								<span data-feather="file"><i class="fa fa-mobile"
									aria-hidden="true"></i></span> Recharge
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/wallet">
								<span data-feather="file"> <i class="fa fa-wallet"
									aria-hidden="true"></i>
							</span> Wallet
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/comments">
								<span data-feather="file"> <i class="fas fa-comment"></i>
							</span> Comment
						</a></li>
						<li class="nav-item"><a class="nav-link" href="${contextPath}/logout"><i
								class="fa fa-sign-out" aria-hidden="true"></i> Sign out</a></li>

					</ul>
				</div>
			</nav>
		</div>
	</div>

	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">