<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Wallet</title>
<jsp:include page="layout/header.jsp" />
<br>
<div class="col-sm-10">
	<div class="col-md-7 col-xs-12 pull-right form-box">
		<div class="form-top">
			<div class="form-top-left">
				<h3>Select Payment Method</h3>
			</div>
			<div class="form-top-right">
				<i class="fa fa-credit-card"></i>
			</div>
		</div>
		<div class="form-bottom">

			<!-- Custom Tabs -->
			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tab_1" data-toggle="tab">All
							Gateways</a></li>
					<li><a href="#tab_3" data-toggle="tab"><img
							src="../assets/images/plogo/citybank.png"
							alt="">City Bank</a></li>
					<li><a href="#tab_5" data-toggle="tab"><img
							src="../assets/images/plogo/eastern-bank-ltd.gif"
							alt="">EBL Skypay</a></li>


				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="tab_1">

						<p>Debit/Credit Cards</p>

						<a href="#" data-toggle="modal" data-target="#vcModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/visa-sq.png"
							alt="Visa" data-original-title="VISA Card" data-toggle="tooltip"
							data-placement="top" width="62" height="62"></a>
						 <a href="#" data-toggle="modal" data-target="#mcModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/masterc-sq.png"
							alt="Master Card" data-original-title="Master Card"
							data-toggle="tooltip" data-placement="top" width="62" height="62"></a>

						<a href="#" data-toggle="modal" data-target="#amexModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/amex-sq.png"
							alt="American Express" data-original-title="American Express"
							data-toggle="tooltip" data-placement="top" width="62" height="62"></a>

						<a href="#" data-toggle="modal" data-target="#qcModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/qcash-sq.png"
							alt="QCash" data-original-title="QCash" data-toggle="tooltip"
							data-placement="top" width="62" height="62"></a> 
						<a href="#" data-toggle="modal" data-target="#fcModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/fastcash-sq.png"
							alt="Fast Cash" data-original-title="Fast Cash"
							data-toggle="tooltip" data-placement="top" width="62" height="62"></a>

						<p>Mobile Banking</p>
						<a href="#" data-toggle="modal" data-target="#bkashModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/bkash-sq.png"
							alt="BKash" data-original-title="BKash" data-toggle="tooltip"
							data-placement="top" width="62" height="62"></a> 
						<a href="#" data-toggle="modal" data-target="#abdirectModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/ab_direct-sq.png"
							alt="AB Direct" data-original-title="AB Direct"
							data-toggle="tooltip" data-placement="top" width="62" height="62"></a>

						<p>Internet Banking</p>
						<a href="#" data-toggle="modal"
							data-target="#cttouchModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/city-sq.png"
							alt="City Bank" data-original-title="City Touch"
							data-toggle="tooltip" data-placement="top" width="62" height="62"></a>
						<a href="#" data-toggle="modal"
							data-target="#mtblModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/mtb-sq.png"
							alt="Mutual Trust Bank" data-original-title="Mutual Trust Bank"
							data-toggle="tooltip" data-placement="top" width="62" height="62"></a>
						<a href="#" data-toggle="modal"
							data-target="#basiaModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/bankasia-sq.png"
							alt="Bank Asia" data-original-title="Bank Asia"
							data-toggle="tooltip" data-placement="top" width="62" height="62"></a>
					</div>
					<!-- /.tab-pane -->


					<div class="tab-pane" id="tab_5">
						<p>Debit/Credit Cards</p>
						<a href="#" data-toggle="modal"
							data-target="#vcModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/visa-sq.png"
							alt="Visa" data-original-title="VISA Card" data-toggle="tooltip"
							data-placement="top" width="62" height="62"></a> <a href="#"
							data-toggle="modal" data-target="#mcModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/masterc-sq.png"
							alt="Master Card" data-original-title="Master Card"
							data-toggle="tooltip" data-placement="top" width="62" height="62"></a>
					</div>
					<!-- /.tab-pane -->

					<div class="tab-pane" id="tab_3">
						<p>Debit/Credit Cards</p>
						<a href="#" data-toggle="modal"
							data-target="#vcModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/visa-sq.png"
							alt="Visa" data-original-title="VISA Card" data-toggle="tooltip"
							data-placement="top" width="62" height="62"></a> <a href="#"
							data-toggle="modal"
							data-target="#mcModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/masterc-sq.png"
							alt="Master Card" data-original-title="Master Card"
							data-toggle="tooltip" data-placement="top" width="62" height="62"></a>
						<a href="#" data-toggle="modal"
							data-target="#amexModal"><img
							class="hvr-push img-padding"
							src="../assets/images/plogo/amex-sq.png"
							alt="American Express" data-original-title="American Express"
							data-toggle="tooltip" data-placement="top" width="62" height="62"></a>
					</div>
					<!-- /.tab-pane -->

				</div>
				<!-- /.tab-content -->
			</div>
			<!-- nav-tabs-custom -->

		</div>

	</div>
	<jsp:include page="layout/model.jsp" />
	<!-- Modal -->
			<div class="modal fade" id="#addmoney" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Select option</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-sm-4">

									<div class="card bg-success">
										<div class="card-body">
											<a style="text-decoration: none;" href="/success">
												<div class="row align-items-center m-b-30">
													<div class="col">
														<h6 class="m-b-5 text-white">Success</h6>
														<h3 class="m-b-0 f-w-700 text-white"></h3>
													</div>								
												</div>
											</a>
										</div>
									</div>
								</div>
								<div class="col-sm-4">

									<div class="card bg-danger">
										<div class="card-body">
											<a style="text-decoration: none;" href="/failed">
												<div class="row align-items-center m-b-30">
													<div class="col">
														<h6 class="m-b-5 text-white">Failed</h6>
														<h3 class="m-b-0 f-w-700 text-white"></h3>
													</div>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
						</div>
					</div>
				</div>
			</div>
<div class="row">
		<div class="col-md-12">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Transaction Type</th>
						<th scope="col">Transaction By</th>
						<th scope="col">Transaction Date</th>
						<th scope="col">Amount</th>
						<th scope="col">Balance</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="wal" items="${entityList}">
						<tr>
							<th scope="row">${wal.id}</th>
							<td>${wal.ttype}</td>
							<td>${wal.tby}</td>
							<td>${wal.trxdate}</td>
							<td>${wal.amount}</td>
							<td>${wal.balance}</td>					
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>

</div>
<jsp:include page="layout/footer.jsp" />