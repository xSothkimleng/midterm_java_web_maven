<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tip creation</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>

	<jsp:include page="common/header.jsp"></jsp:include>


	<div class="container">

		<h2>Tip creation</h2>

		<div class="col-md-6 col-md-offset-3">

			<%-- <div class="alert alert-success center" role="alert">
				<p>${NOTIFICATION}</p>
			</div> --%>

			<form action="createTip" method="post">

				<div class="form-group">
					<label for="title">Title:</label> <input type="text"
						class="form-control" id="title" placeholder="Title" name="title"
						required>
				</div>

				<div class="form-group">
					<label for="description">Description:</label> <input type="text"
						class="form-control" id="description" placeholder="Description"
						name="description" required>
				</div>

				<div class="form-group">
					<label for="exampleHtmlEscape">Example:</label>
					<textarea class="form-control" id="exampleHtmlEscape" rows="10"
						placeholder="Example HTML" name="exampleHtmlEscape" required></textarea>
				</div>


				<button type="submit" class="btn btn-primary">Submit</button>

			</form>
		</div>
		
	</div>

	<jsp:include page="common/footer.jsp"></jsp:include>

</body>
</html>