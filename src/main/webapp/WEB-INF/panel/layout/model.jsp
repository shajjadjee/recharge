<div class="modal fade" id="bkashModal" tabindex="-1" role="dialog"
	aria-labelledby="bkashModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="bkashModalLabel">Select option</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">

					<div class="col-sm-4">
						<img class="hvr-push img-padding"
							src="../assets/images/plogo/bkash-sq.png"
							alt="BKash" data-original-title="BKash" data-toggle="tooltip"
							data-placement="top" width="62" height="62">
						<form action="/wallet/add" method="post">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <input type="hidden" name="tby"
								value="Bkash" /> <label for="bkash">Bkash Number</label> <input
								class="form-control" type="text" maxlength="11" minlength="11"
								placeholder="01"> <label for="amount">Amount
								(TK)</label> <input class="form-control" name="amount" id="amount"
								maxlength="4" minlength="2" min="0" type="number"
								placeholder="Amount (TK)"> <label>Pin Number</label> <input
								class="form-control" type="text" minlength="5">
							<button class="btn btn-primary" type="submit">Add Money</button>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<!-- Master Card -->
<div class="modal fade" id="mcModal" tabindex="-1" role="dialog"
	aria-labelledby="mcModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="max-width: 750px;" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="mcModalLabel">Select option</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">

					<div class="col-sm-10">
						<img class="hvr-push img-padding"
							src="../assets/images/plogo/masterc-sq.png"
							alt="mc card" data-original-title="Master Card" data-toggle="tooltip"
							data-placement="top" width="62" height="62">
						<form action="/wallet/add" method="post">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <input type="hidden" name="tby"
								value="Master Card" />
							<div class="form-group">
								<label for="fulname">Full name (on the card)</label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fa fa-user"></i></span>
									</div>
									<input type="text" class="form-control" name="fulname"
										placeholder="" required="">
								</div>
							</div>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fa fa-credit-card"></i></span>
								</div>
								<input type="text" class="form-control" maxlength="19"
									minlength="19" name="cardNumber" oninput="this.value = this.value.replace(/[^\dA-Z]/g, '').replace(/(.{4})/g, '$1 ').trim();" placeholder="">
							</div>
							
								<div class="row">
									<div class="col-sm-8">
										<div class="form-group">
											<label><span class="hidden-xs">Expiration</span> </label>
											<div class="input-group">
												<input type="text" class="form-control" placeholder="MM" required="" maxlength="2" minlength="2"> 
													<input type="text" class="form-control"
													placeholder="YY" maxlength="2" minlength="2">
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<label data-toggle="tooltip" title=""
												data-original-title="3 digits code on back side of the card">CVV
												<i class="fa fa-question-circle"></i>
											</label> <input type="text" class="form-control" required="" maxlength="3" minlength="3">
										</div>
									
									</div>
								</div>
							
							<label for="amount">Amount (TK)</label> <input
								class="form-control" name="amount" id="amount" maxlength="4"
								minlength="2" min="0" type="number" placeholder="">
							<button class="btn btn-primary" type="submit">Add Money</button>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<!-- Visa Card -->
<div class="modal fade" id="vcModal" tabindex="-1" role="dialog"
	aria-labelledby="vcModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="max-width: 750px;" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="vcModalLabel">Select option</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">

					<div class="col-sm-10">
						<img class="hvr-push img-padding"
							src="../assets/images/plogo/visa-sq.png"
							alt="cc card" data-original-title="Visa Card" data-toggle="tooltip"
							data-placement="top" width="62" height="62">
						<form action="/wallet/add" method="post">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <input type="hidden" name="tby"
								value="Visa Card" />
							<div class="form-group">
								<label for="fulname">Full name (on the card)</label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fa fa-user"></i></span>
									</div>
									<input type="text" class="form-control" name="fulname"
										placeholder="" required="">
								</div>
							</div>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fa fa-credit-card"></i></span>
								</div>
								<input type="text" class="form-control" maxlength="19"
									minlength="19" name="cardNumber" oninput="this.value = this.value.replace(/[^\dA-Z]/g, '').replace(/(.{4})/g, '$1 ').trim();" placeholder="">
							</div>
							
								<div class="row">
									<div class="col-sm-8">
										<div class="form-group">
											<label><span class="hidden-xs">Expiration</span> </label>
											<div class="input-group">
												<input type="text" class="form-control" placeholder="MM" required="" maxlength="2" minlength="2"> 
													<input type="text" class="form-control"
													placeholder="YY" maxlength="2" minlength="2">
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<label data-toggle="tooltip" title=""
												data-original-title="3 digits code on back side of the card">CVV
												<i class="fa fa-question-circle"></i>
											</label> <input type="text" class="form-control" required="" maxlength="3" minlength="3">
										</div>
									
									</div>
								</div>
							
							<label for="amount">Amount (TK)</label> <input
								class="form-control" name="amount" id="amount" maxlength="4"
								minlength="2" min="0" type="number" placeholder="">
							<button class="btn btn-primary" type="submit">Add Money</button>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<!-- Amex Card -->
<div class="modal fade" id="amexModal" tabindex="-1" role="dialog"
	aria-labelledby="amexModalLabel" aria-hidden="true">
	<div class="modal-dialog" style="max-width: 750px;" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="mcModalLabel">Select option</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row">

					<div class="col-sm-10">
						<img class="hvr-push img-padding"
							src="../assets/images/plogo/amex-sq.png"
							alt="amex card" data-original-title="Amex" data-toggle="tooltip"
							data-placement="top" width="62" height="62">
						<form action="/wallet/add" method="post">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <input type="hidden" name="tby"
								value="Amex Card" />
							<div class="form-group">
								<label for="fulname">Full name (on the card)</label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fa fa-user"></i></span>
									</div>
									<input type="text" class="form-control" name="fulname"
										placeholder="" required="">
								</div>
							</div>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fa fa-credit-card"></i></span>
								</div>
								<input type="text" class="form-control" maxlength="17"
									minlength="17" name="cardNumber" oninput="this.value = this.value.replace(/[^\dA-Z]/g, '').replace(/(.{5})/g, '$1 ').trim();" placeholder="">
							</div>
							
								<div class="row">
									<div class="col-sm-8">
										<div class="form-group">
											<label><span class="hidden-xs">Expiration</span> </label>
											<div class="input-group">
												<input type="text" class="form-control" placeholder="MM" required="" maxlength="2" minlength="2"> 
													<input type="text" class="form-control"
													placeholder="YY" maxlength="2" minlength="2">
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<label data-toggle="tooltip" title="4 digits code on front side of the card"
												data-original-title="4 digits code on front side of the card">CVV
												<i class="fa fa-question-circle"></i>
											</label> <input type="text" class="form-control" required="" maxlength="4" minlength="4">
										</div>
									
									</div>
								</div>
							
							<label for="amount">Amount (TK)</label> <input
								class="form-control" name="amount" id="amount" maxlength="4"
								minlength="2" min="0" type="number" placeholder="">
							<button class="btn btn-primary" type="submit">Add Money</button>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>
</div>