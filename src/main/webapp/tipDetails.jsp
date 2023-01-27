<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

		<div class="overflow-auto">
			<div class="card w-85 mt-3">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Tip title</h5>
						<p class="card-text">Tip description</p>
						<h5 class="card-title">Example</h5>
						<p class="card-text">Tip example in HTML</p>

						<%-- <p class="card-text">
							<c:forEach var="item" items="<%=htmlList%>">
								<br>
								<code>
									<c:out value="${item}" escapeXml="true"></c:out>
								</code>
							</c:forEach>

						</p> --%>
					</div>
				</div>

			</div>
		</div>


	</div>




	<jsp:include page="common/footer.jsp"></jsp:include>

</body>
</html>