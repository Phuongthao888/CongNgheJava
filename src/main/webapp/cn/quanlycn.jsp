<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý chuyên ngành</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
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
	}

	.aList{
		text-decoration: none;
		color: white;
	}
</style>
</head>
<body>
	<!-- MAIN CONTENT -->
	<div class="viewport">
		<!-- SIDEBAR -->
				<%@include file="../teml/sidebar.jsp" %>
		<!-- END SIDEBAR -->	
	
	
		<!-- MAIN -->
		<div class="container-fluid">
			<div>
				<%@include file="../cn/cnList.jsp" %>
			</div>
		</div>
		<!-- END MAIN -->

	</div>
<!-- MAIN CONTENT -->	
</body>
</html>