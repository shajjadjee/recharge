<jsp:include page="layout/header.jsp" />
<div class="container">
	<div class="row justify-content-center">
		<div class="col-sm-4">
			<h3>Select Your Country</h3>
			<c:forEach var="c" items="${countryList}">
			<select class="form-control">
				<option value="${c.name}">${c.name}</option>
			</select>
			</c:forEach>
		</div>
	</div>
	<div class="row justify-content-center">
		<div class="col-sm-4">
		
		</div>
	</div>

</div>
<jsp:include page="layout/footer.jsp" />