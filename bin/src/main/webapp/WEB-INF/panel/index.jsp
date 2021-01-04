<jsp:include page="layout/header.jsp" />


	<div class="container">
		<h1 class="h1 mb-3 mt-5">Welcome !</h1>
		<div class="row">

			<div class="col-sm-4">

				<div class="card prod-p-card bg-c-red">
					<div class="card-body">
						<a style="text-decoration: none;" href="/recharge">
							<div class="row align-items-center m-b-30">
								<div class="col">
									<h6 class="m-b-5 text-white">Recharge</h6>
									<h3 class="m-b-0 f-w-700 text-white"></h3>
								</div>
								<div class="col-auto">
									<i class="fa fa-mobile text-c-red"></i>
								</div>
							</div>
						</a>
						<!-- <p class="m-b-0 text-white"><span class="label label-danger m-r-10">+11%</span>From Previous Month</p> -->
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="card prod-p-card bg-c-blue">
					<div class="card-body">
						<a style="text-decoration: none;" href="/user">
							<div class="row align-items-center m-b-30">
								<div class="col">
									<h6 class="m-b-5 text-white">Total User</h6>
									<h3 class="m-b-0 f-w-700 text-white"></h3>
								</div>
								<div class="col-auto">
									<i class="fa fa-user text-c-red"></i>
								</div>
							</div>
						</a>

					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="card prod-p-card bg-c-green">
					<div class="card-body">
						<a style="text-decoration: none;" href="/transaction">
							<div class="row align-items-center m-b-30">
								<div class="col">
									<h6 class="m-b-5 text-white">Transaction</h6>
									<h3 class="m-b-0 f-w-700 text-white"></h3>
								</div>
								<div class="col-auto">
									<i class="fa fa-exchange" aria-hidden="true"></i>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>


<jsp:include page="layout/footer.jsp" />
