<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
	integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
	crossorigin="anonymous"></script>
<style>
body {
	background: #EEEEEE;
}

.form .input-box {
	width: 100%;
	margin-top: 10px;
}

.container {
	background-color: white;
	position: relative;
	max-width: 800px;
	height: auto;
	width: 100%;
	padding: 25px;
	border-radius: 8px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	align-items: center;
	margin-top: 100px;
}

.container header {
	font-size: 1.2rem;
	color: #000;
	font-weight: 600;
	text-align: center;
}

.container .form {
	margin-top: 15px;
}

.form .input-box {
	width: 100%;
	margin-top: 10px;
}

.input-box label {
	color: #000;
}
label{
margin-top: 10px;
}
</style>
</head>
<body>
	<!-- MAIN CONTENT -->

	<div class="viewport">
		<!-- SIDEBAR -->
		<%@include file="../teml/sidebar.jsp"%>
		<!-- END SIDEBAR -->
		<br>
		<!-- MAIN -->
		<form class="row g-6"
			action="${pageContext.request.contextPath}/newCNServlet"
			method="post">
			<div class="container text-center">
				<div class="row">
					<div class="col-7">
						<div class="col-md-12">
							<label for="macn" class="form-label"> <b> Mã chuyên
									ngành </b></label> <input type="text" class="form-control" id="macn"
								name="macn" required>
						</div>

						<div class="col-md-12">
							<label for="tencn" class="form-label"><b> Tên chuyên
									ngành </b></label> <input type="text" class="form-control" id="tencn"
								name="tencn" required>
						</div>

					</div>
					<div class="col-5">
						<div class="col-md-12">
							<label for="khoaFK" class="form-label"><b> Chọn khoa
							</b></label> <select class="form-select" aria-label="Default select example"
								id="khoaFK" name="khoaFK">
								<!-- Populate this dropdown with available khoaModel instances -->
								<c:forEach var="khoa" items="${khoaList}">
									<option value="${khoa.getMakhoa()}">${khoa.getTenkhoa()}</option>
								</c:forEach>
							</select>
						</div>
						<br>

						<div class="col-12">
							<button class="btn btn-primary" type="submit">Thêm vào
								danh sách</button>
							<button class="btn btn-info" type="reset">Đặt lại</button>
							<a href="${pageContext.request.contextPath}/CNServlet" class="btn btn-secondary" style="width: 250px;margin-top: 10px">Quay lại</a>
						</div>
					</div>
				</div>
			</div>
		</form>


		<!-- END MAIN -->
	</div>
	<!-- END MAIN CONTENT -->



</body>
</html>