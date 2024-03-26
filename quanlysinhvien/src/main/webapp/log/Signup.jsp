<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<style>
	body {
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  height: 100vh;
	  font-family: Arial, sans-serif;
	  background-color: #f0f0f0;
	  background: linear-gradient(45deg, rgba(255, 126, 95, 0.8), #99CCFF);
	}
	
	form {
	  background-color: #ffffff;
	  padding: 20px;
	  border-radius: 8px;
	  box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
	}
	
	h2 {
	  text-align: center;
	  color: #333333;
	}
	
	table {
	  width: 700px;
	}
	
	td {
	  padding: 10px 0;
	}
	
	input[type="text"], input[type="password"] {
	  width: 100%;
	  padding: 10px;
	  border-radius: 4px;
	  border: 1px solid #cccccc;
	}
	
	button, input[type="reset"] {
	  width: 100%;
	  padding: 10px;
	  border: none;
	  border-radius: 4px;
	  color: #ffffff;
	  background-color: #007BFF;
	  cursor: pointer;
	}
	
	input[type="reset"] {
	  background-color: #6c757d;
	  margin-top: 10px;
	}
</style>
</head>
<body>
<form method="POST" action="${pageContext.request.contextPath}/SignupServlet">
  <h2>ĐĂNG KÝ</h2>
  <table>
    <tr>
      <td>Tên đăng nhập &nbsp</td>
      <td><input type="text" name="username"/></td>
    </tr>
    <tr>
      <td>Mật khẩu &nbsp</td>
      <td><input type="password" name="password"/></td>
    </tr>
    <tr>
      <td colspan="2"><button>Đăng ký</button><input type="reset" value="Nhập lại"></td>
    </tr>
    <tr>
    	<td colspan="2">
    		<hr style="width: 700px">
    		<center>
    			<a class="nav-link aList" href="${pageContext.request.contextPath}/LoginServlet">Quay lại trang đăng nhập</a><br>
    		</center>
    	</td>
    </tr>
  </table>
</form>
</body>
</html>