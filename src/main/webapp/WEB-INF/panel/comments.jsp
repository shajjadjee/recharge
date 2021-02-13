<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/header.jsp" />
<br>
<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<c:if test='${status.equals("success")}'>
					<div class="alert alert-primary" role="alert">${message}</div>
				</c:if>

				<c:if test='${status.equals("error")}'>
					<div class="alert alert-danger" role="alert">${message}</div>
				</c:if>

				<form class="form-floating" action="/comments/add" method="post">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					<div class="form-floating">
						<textarea name="description" class="form-control"
							placeholder="Leave a comment here" id="floatingTextarea"></textarea>
						<label for="floatingTextarea">Comments</label>
					</div>
					<button type="submit" class="btn btn-success">Add</button>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Comment</th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach var="comments" items="${entityList}">
							<tr>
								<th scope="row">${comments.id}</th>
								
								<td>${comments.description}</td>
							</tr>
						</c:forEach>
						
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</main>
<div class="footer-below" style="position: fixed; bottom: 0; width: 100%;height: 60px;background-color: #043acc; 
	color: white;
	text-align: center;
	font-size: 20px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p>© My recharge . All Rights Reserved.</p>
				</div>
			</div>
		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
</body>
</html>