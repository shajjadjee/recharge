<jsp:include page="layout/header.jsp" />
<div class="container">
	<div class="row justify-content-center">
		<div class="card-body">
			<form>
				<div class="input-group form-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fas fa-flag"></i></span>
					</div>
					<select name="country" id="country">
						<option value="Bangladesh">Bangladesh</option>
						<option value="India">India</option>
						<option value="Pakisthan">Pakisthan</option>
						<option value="Afganisthan">Afganisthan</option>
					</select>
				</div>
				<div class="input-group form-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fa fa-phone"></i></span>
					</div>
					<input name="phone" id="phone" type="text" class="form-control" placeholder="01******">
				</div>
				<div class="input-group form-group">
					<div class="input-group-prepend">
						<span class="input-group-text"><i class="fa fa-phone"></i></span>
					</div>
					<input id="" type="text" class="form-control" placeholder="01******">
				</div>
			</form>

		</div>
	</div>



	<jsp:include page="layout/footer.jsp" />