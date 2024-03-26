<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<style>
	.log{
		margin-right: 20px;	
	}
	.dropdown {
	    position: relative;
	    display: inline-block;
	}
	
	.dropdown-content {
	    display: none;
	    position: absolute;
	    background-color: #f9f9f9;
	    min-width: 160px;
	    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	    z-index: 1;
	    right: 0; /* Change right to 0 to align with the right edge of the icon */
	    background: linear-gradient(45deg, rgba(0, 0, 0, 0.5), #99CCFF, rgba(0, 0, 0, 0.8));
	}
	
	.dropdown-content a {
	    color: black;
	    padding: 12px 16px;
	    text-decoration: none;
	    display: block;
	}
	
	.dropdown-content a:hover {
	    background: linear-gradient(45deg, rgba(0, 0, 0, 0.5), #99CCFF, rgba(0, 0, 0, 0.8));
	}
	
	.dropdown:hover .dropdown-content {
	    display: block;
	}
	
	.icon {
	    fill: white;
	    cursor: pointer;
	}

</style>
</head>
<body>
<!-- THANH MENU  -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary" style="background: linear-gradient(45deg, rgba(0, 0, 0, 0.5), #99CCFF, rgba(0, 0, 0, 0.8));">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#">
	      <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-bank2" viewBox="0 0 16 16">
			  <path d="M8.277.084a.5.5 0 0 0-.554 0l-7.5 5A.5.5 0 0 0 .5 6h1.875v7H1.5a.5.5 0 0 0 0 1h13a.5.5 0 1 0 0-1h-.875V6H15.5a.5.5 0 0 0 .277-.916l-7.5-5zM12.375 6v7h-1.25V6zm-2.5 0v7h-1.25V6zm-2.5 0v7h-1.25V6zm-2.5 0v7h-1.25V6zM8 4a1 1 0 1 1 0-2 1 1 0 0 1 0 2M.5 15a.5.5 0 0 0 0 1h15a.5.5 0 1 0 0-1z"/>
			</svg> <b style="margin-top: 20px;">LPT</b> 
	    </a>

	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="index.jsp"><b> Trang chủ </b></a>
	        </li>
	        
	        <!-- TRANG QUẢN LÝ  -->
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="quanly.jsp">
	          <b>
	          	Quản lý 
	          </b>
	          </a>
	        </li>
	        <!-- END TRANG QUẢN LÝ  -->
	        
	      </ul>
	      <div class="dropdown">
		    <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
		        <img src="imgJSP/thao.jpg" alt="" width="50" height="50" class="rounded-circle me-2">
		        <strong>Phương Thảo</strong>
		      </a>
		    <div class="dropdown-content">
		        
		        <a href="log/Login.jsp" class="nav-link active log" style="color: black;">Đăng xuất</a>
		    </div>
		</div>
	    </div>
	  </div>
</nav>
<!-- END THANH MENU-->
</body>
</html>