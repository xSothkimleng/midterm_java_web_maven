<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Login</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>
	<jsp:include page="common/header.jsp"></jsp:include>


	<div class="container">

		<h2>Login for Admin only</h2>

		<div class="col-md-6 col-md-offset-3">

			<%
			if (request.getAttribute("loginStatus") != null) {
				if (request.getAttribute("loginStatus") == "success") {
			%>
			<div class="alert alert-success center" role="alert">
				<span>Successfully Login</span>
			</div>
			<% } else if (request.getAttribute("loginStatus") == "failed") { %>
			<div class="alert alert-danger center" role="alert">
				<span>Username or Password in invalid</span>
			</div>
			<%}}%>
			
			<form action="Login" method="post">

				<div class="form-group">
					<label for="uname">User Name:</label> <input type="text"
						class="form-control" id="username" placeholder="User Name"
						name="username" required>
				</div>

				<div class="form-group">
					<label for="uname">Password:</label> <input type="password"
						class="form-control" id="password" placeholder="Password"
						name="password" required>
				</div>

				<button type="submit" class="btn btn-primary">Submit</button>

			</form>
		</div>
	</div>




	<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>