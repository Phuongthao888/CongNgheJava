<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</head>
<body>
<!-- THANH MENU  -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT2QI_lEWO0LRoe6G55m6h_vO7s5fTvCooRTMkmWC_k6I4F3lN" alt="Bootstrap" width="40" height="40" > LPT
    </a>

	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="index.jsp">Trang chủ</a>
	        </li>
	        
	        
	        
	        <!-- CHUYỂN ĐĂNG NHẬP -->
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="Login.jsp">
	          Đăng nhập
	          </a>
	        </li>
	        <!-- END ĐĂNG NHẬP -->
	        
	        
	        
	        <!-- CHUYỂN ĐĂNG KÝ -->
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="Signup.jsp">
	          Đăng ký
	          </a>
	        </li>
	        <!-- END ĐĂNG KÝ -->
	        
	        <li class="nav-item">
	          <a class="nav-link disabled" aria-disabled="true">About</a>
	        </li>
	      </ul>
	      <form class="d-flex" role="search">
	        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	        <button class="btn btn-outline-success" type="submit">Search</button>
	      </form>
	    </div>
	  </div>
</nav>
<!-- END THANH MENU-->

	<div class="container">
		<header>
		<center>
			<br><h3>QUẢN LÝ HÀNG HÓA</h3><br>
			</center>
		</header>
		
		<section>
			<div class="levell" style="text-align:right">
				<center><a href="ProductServlet"><img src="Images/buttonDanhmuchang.jpg" /></a></center>
			</div>
			<div class="level2">
				<center><a href="#"><img src="Images/buttonNhanvien.jpg" /></a></center>
			</div>
			<div class="vp">
				<center><a href="#"><img src="Images/buttonChungtu.jpg" /></a></center>
			</div>
			<div class="mos">
				<center><a href="#"><img src="Images/buttonThongke.jpg" /></a></center>
			</div>
		</section>
	</div>
</body>
</html>