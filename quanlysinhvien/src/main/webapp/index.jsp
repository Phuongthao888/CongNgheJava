<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Trang chủ</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<style>
	img {
		display: inline-block;
		align-items: center;
	}
	.a{
		margin-top: 20px;
		text-decoration: none;
		color: black;
	}
	.size{
		height: 200px;
		width: 200px;
		border-radius: 20px;
	}
	label{
		margin-top: 20px;
	}
	body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;

        }

        /* Add additional styling if needed */

        /* Content styles */
        .content {
            flex: 1;
            /* Add styles for your main content */
        }
</style>
</head>
<body>
<!-- HEADER -->
	<%@include file="teml/header.jsp" %>
<!-- END HEADER -->

	<div class="container text-center content" style="margin-top: 150px">
	  <div class="row">
	  
	  	<div class="col">
	    	<img class="size" src="imgJSP/NKimg.jpg" >
	    	<a class="a" title="Quản lý niên khóa" href="${pageContext.request.contextPath}/nienkhoaServlet"> <h4><b> Quản lý niên khóa </b>  </h4> </a>
	    </div>
	  
	    <div class="col">
	    	<img class="size" src="imgJSP/KHOAimg.jpg" >
	    	<a class="a" title="Quản lý niên khoa đào tạo"  href="${pageContext.request.contextPath}/khoaServlet"> <h4><b> Quản lý khoa </b>  </h4> </a>
	    </div>
	    
	    <div class="col">
	    	<img class="size" src="imgJSP/CNimg.jpg" >
	    	<a class="a" title="Quản lý niên chuyên ngành"  href="${pageContext.request.contextPath}/CNServlet"> <h4><b> Quản lý <p>chuyên ngành </b>  </h4> </a>
	    </div>
	    
	    <div class="col">
	    	<img class="size" src="imgJSP/LOPimg.jpg" >
	    	<a class="a" title="Quản lý niên lớp học"  href="${pageContext.request.contextPath}/lopServlet"> <h4><b> Quản lý lớp </b>  </h4> </a>
	    </div>
	    
	    <div class="col">
	    	<img class="size" src="imgJSP/SVimg.jpg" >
	    	<a class="a" title="Quản lý niên sinh viên"  href="${pageContext.request.contextPath}/sinhvienServlet"> <h4><b> Quản lý sinh viên </b>  </h4> </a>
	    </div>
	  </div>
	  
	</div>
<!-- FOOTER -->
	<%@include file="teml/footer.jsp" %>
<!-- END FOOTER -->
</body>
</html>