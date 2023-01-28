<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.hibernate.model.Tip"%>
<%@ page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>HTML Tips</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>

	<jsp:include page="common/header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<%
			if (request.getAttribute("tips") != null) {
				List<Tip> tips = (List<Tip>) (request.getAttribute("tips"));
				for (Tip tip : tips) {
			%>
			<div class="col-sm-3 mt-3">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title"><%=tip.getTitle()%></h5>
						<p class="card-text"><%=tip.getDescription()%></p>
						<form action="tipDetailPage" method="get">
							<input value="<%=tip.getTip_id()%>" name="id" hidden/>
							<a href="<%=request.getContextPath()%>/tipDetailPage">
							<button type="submit" class="btn btn-primary">Details</button>
							</a>
						</form>
					</div>
				</div>
			</div>
			<%
			}
			} else {
			%>
			<div class="col-sm-6 mt-3">
				<h3>There is no any tip yet!</h3>
			</div>
			<%
			}
			%>

		</div>
	</div>

	<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>