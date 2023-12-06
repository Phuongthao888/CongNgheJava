<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xóa</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<style>
	.form .input-box {
	  width: 100%;
	  margin-top: 10px;
	}
	.container {
	  position: relative;
	  max-width: 500px;
	  height: 300px;
	  width: 100%;
	  background: #EEEEEE;
	  padding: 25px;
	  border-radius: 8px;
	  box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
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
</style>
</head>
<body>
<!-- HEADER -->
	<%@include file="../teml/header.jsp" %>
<!-- END HEADER -->

<!-- MAIN CONTENT -->

	<div class="viewport">
		<!-- SIDEBAR -->
			<%@include file="../teml/sidebar.jsp" %>
		<!-- END SIDEBAR -->
		<br>
		<!-- MAIN -->
		<div class="container-fluid">
		  <section class="container">
		    <header>Bạn có chắc chắc muốn xóa?</header>
		    <form class="row g-3" action="${pageContext.request.contextPath}/deleteKhoaServlet" method="get">
		      <div class="col-md-12">
		        <label for="makhoa" class="form-label">Mã khoa</label>
		        <input type="hidden" class="form-control" value="${param.code}" name="makhoa" required>
		      </div>
		      <div class="col-md-12">
		        <label for="tenkhoa" class="form-label">Tên khoa</label>
		        <input type="text" value="${param.tenkhoa}" class="form-control" name="tenkhoa" required>
		      </div>
		      <div class="col-12">
		        <button class="btn btn-danger" type="submit">Delete</button>
		        <input class="btn btn-secondary" type="reset">
		      </div>
		    </form>
		  </section>
		</div>

		<!-- END MAIN -->
	</div>
<!-- END MAIN CONTENT -->
</body>
</html>