<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.viewport {
	  padding-left: 250px;
	  -webkit-transition: all 0.5s ease;
	  -moz-transition: all 0.5s ease;
	  -o-transition: all 0.5s ease;
	  transition: all 0.5s ease;
	}
	.sidebar {
	  z-index: 1000;
	  position: fixed;
	  left: 250px;
	  width: 250px;
	  height: 100%;
	  margin-left: -250px;
	  overflow-y: auto;
	  background: #37474F;
	  color: white;
	}
	.main{
		color: black;
	}z

	.aList{
		text-decoration: none;
		color: white;
	}
</style>
</head>
<body>

	
<!-- MAIN CONTENT -->

	<!-- SIDEBAR -->
		<div class="sidebar">
			<nav class="nav flex-column"><br>
			<div class="dropdown" style="margin-left: 20px">
		      <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
		        <img src="imgJSP/thao.jpg" alt="" width="50" height="50" class="rounded-circle me-2">
		        <strong>Phương Thảo</strong>
		      </a>
		      <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
		        
		        <li><hr class="dropdown-divider"></li>
		        <a href="log/Login.jsp" class="nav-link active log" style="color: white;">Đăng xuất</a>
		      </ul>
		    </div>
		    <hr>
			  <a class="nav-link active aList" aria-current="page" href="index.jsp">TRANG CHỦ</a><br>
			  <a class="nav-link aList" href="${pageContext.request.contextPath}/khoaServlet">Khoa</a><br>
			  <a class="nav-link aList" href="${pageContext.request.contextPath}/CNServlet">Chuyên ngành</a><br>
			  <a class="nav-link aList" href="${pageContext.request.contextPath}/lopServlet">Lớp</a><br>
			  <a class="nav-link aList" href="${pageContext.request.contextPath}/sinhvienServlet">Sinh viên</a><br>
			  <a class="nav-link aList" href="${pageContext.request.contextPath}/nienkhoaServlet">Niên khóa</a><br>
			  <br>				  
			</nav>
		</div>
	<!-- END SIDEBAR -->	

<!-- MAIN CONTENT -->
</body>
</html>