<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Recharge Panel</title>
<link rel="stylesheet" href="webjars/sweetalert2/7.28.10/dist/sweetalert2.min.css">
<script src="webjars/sweetalert2/7.28.10/dist/sweetalert2.min.js"></script>
<script src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
<jsp:include page="fcn.jsp" />
<jsp:include page="layout/header.jsp" />

<div class="container">
	<div class="row justify-content-center">
	<div class="col-md-12">
				<c:if test='${status.equals("success")}'>
					<div class="alert alert-primary" role="alert">${message} <a href="/recharge">Go back</a></div>
				</c:if>

				<c:if test='${status.equals("error")}'>
					<div class="alert alert-danger" role="alert">${message} <a href="/recharge">Go back</a></div>
				</c:if>
				
				</div>
		<div class="col-sm-4 card">
			<form action="/recharge/add" method="post">
			<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				<label for="phone">Mobile Number</label> 
				<input class="form-control" type="text" name="phone" id="phone">
				 <label for="operator" class="select-label">Select Operator</label> 
				<select class="form-control" name="operator" id="operator">
					<option value="<%=request.getParameter("operator")%>">Select Operator</option>
					<option value="Grameenphone">Grameenphone</option>
					<option value="Banglalink">Banglalink</option>
					<option value="Robi">Robi</option>
					<option value="Teletalk">Teletalk</option>
					<option value="Airtel">Airtel</option></select> 
					<label for="simtype" class="select-label">Select Connection Type</label> 
					<select class="form-control" formcontrolname="type" id="simtype" name="simtype">
					<option value="">Select Connection Type</option>
					<option value="prepaid">Prepaid</option>  
					<option value="postpaid">Postpaid</option>
					<option value="skitto">Skitto</option>
					</select>
					 <label for="amount">Amount (TK)</label> <input
					class="form-control" name="amount" id="amount" maxlength="4"
					minlength="2" min="0" type="number" placeholder="Amount (TK)" value="<%=request.getParameter("amount")%>">
					<button class="btn btn-primary" type="submit">Recharge</button>
			</form>
          
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
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
						<div class="modal-footer"></div>
					</div>
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
						<th scope="col">Title</th>
						<th scope="col">Status</th>
						<th scope="col">Transaction date</th>
						<th scope="col">Phone No.</th>
						<th scope="col">Operator</th>
						<th scope="col">Sim Type</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="rec" items="${entityList}">
						<tr>
							<th scope="row">${rec.id}</th>
							<td>${rec.amount}</td>
							<td>${rec.status}</td>
							<td>${rec.createdDate}</td>
							<td>${rec.phone}</td>
							<td>${rec.operator}</td>
							<td>${rec.simtype}</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>

</div>
<script type="text/javascript">
if('${flag}' == 'showAlert'){
	 swal("Are you sure you want to do this?", {
	 buttons: ["Oh noez!", true],
	 });
	}
</script>
<jsp:include page="layout/footer.jsp" />