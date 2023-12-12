<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
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
	  max-width: 500px;
	  height: 350px;
	  width: 100%;
	  padding: 25px;
	  border-radius: 8px;
	  box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
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
</style>
</head>
<body>
<!-- MAIN CONTENT -->

	<div class="viewport">
		<!-- SIDEBAR -->
			<%@include file="../teml/sidebar.jsp" %>
		<!-- END SIDEBAR -->
		<br>
		<!-- MAIN -->
		<div class="container-fluid">
		  <section class="container">
		    <header>Cập nhật thông tin về chuyên ngành</header>
		    <form class="row g-3" action="${pageContext.request.contextPath}/editCNServlet"  method="post">
		      <div class="col-md-12">
			      <label for="macn" class="form-label">Mã chuyên ngành:</label>
				  <input type="text" class="form-control" value="${updateCN.getMacn()}" name="macn" readonly>
		      </div>
		      <div class="col-md-12">
		        <label for="tencn" class="form-label">Tên chuyên ngành:</label>
		        <input type="text" class="form-control" value="${updateCN.getTencn()}" name="tencn" required>
		      </div>
		      <select class="form-select" aria-label="Default select example" id="khoaFK" name="khoaFK" >
				    <!-- Populate this dropdown with available khoaModel instances -->
				    <c:forEach var="khoa" items="${khoaList}">
				        <option value="${khoa.getMakhoa()}" ${updateCN.getKhoaFK().getMakhoa() == khoa.getMakhoa() ? 'selected="selected"' : ''}>${khoa.getTenkhoa()}</option>
				    </c:forEach>
			  </select><br>
		      <div class="col-12">
		        <button class="btn btn-primary" type="submit">Cập nhật</button>
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