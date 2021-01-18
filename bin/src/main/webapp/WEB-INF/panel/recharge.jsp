<jsp:include page="layout/header.jsp" />
<div class="container">
	<div class="row justify-content-center">
		<div class="col-sm-4">
		<form action="">
			<h3>Select Your Country</h3>
			<select class="form-control">
			<c:forEach var="c" items="${countryList}">
				<option value="${c.name}">${c.name}</option>
				</c:forEach>
			</select>
			</form>
		</div>
	</div>
	<div class="row justify-content-center">
		<div class="col-sm-4">
		<form action="">
		<label>number</label>
		${c.code}<input class="form-control" type="text" placeholder="${c.code}">
		<label>Amount</label>
		<input class="form-control" type="number">
		<input type="button" value="Recharge">
		</form>
		</div>
	</div>

</div>
<jsp:include page="layout/footer.jsp" />