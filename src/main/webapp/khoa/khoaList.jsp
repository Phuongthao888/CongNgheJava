<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách khoa</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	.center-div {
	    display: flex;
	    justify-content: center;
	    align-items: flex-start;
	    height: 800px;
	}
	.card-color{
		background-color: #EEEEEE;
	}
	.bottom {
	    margin-bottom: 20px;
	}
	.card-add {
	    width: 130px;
	    height: 40px;
	    background-color: #99CCFF;
	    border-radius: 5px;
	    display: flex; /* Use flexbox */
	    align-items: center;
	    justify-content: center; /* Center content horizontally */
	    margin-top: 20px;
	}
	
	.card-add a {
	    text-decoration: none; /* Remove underline from the link */
	    color: #000000; /* Set text color */
	}

	
</style>
</head>
<body>
	<br>
	<center>
		<h3>Quản lý danh sách khoa</h3>
	</center>
	
	<div class="card-add">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square-dotted" viewBox="0 0 16 16">
		  <path d="M2.5 0c-.166 0-.33.016-.487.048l.194.98A1.51 1.51 0 0 1 2.5 1h.458V0zm2.292 0h-.917v1h.917zm1.833 0h-.917v1h.917zm1.833 0h-.916v1h.916zm1.834 0h-.917v1h.917zm1.833 0h-.917v1h.917zM13.5 0h-.458v1h.458c.1 0 .199.01.293.029l.194-.981A2.51 2.51 0 0 0 13.5 0m2.079 1.11a2.511 2.511 0 0 0-.69-.689l-.556.831c.164.11.305.251.415.415l.83-.556zM1.11.421a2.511 2.511 0 0 0-.689.69l.831.556c.11-.164.251-.305.415-.415L1.11.422zM16 2.5c0-.166-.016-.33-.048-.487l-.98.194c.018.094.028.192.028.293v.458h1zM.048 2.013A2.51 2.51 0 0 0 0 2.5v.458h1V2.5c0-.1.01-.199.029-.293l-.981-.194zM0 3.875v.917h1v-.917zm16 .917v-.917h-1v.917zM0 5.708v.917h1v-.917zm16 .917v-.917h-1v.917zM0 7.542v.916h1v-.916zm15 .916h1v-.916h-1zM0 9.375v.917h1v-.917zm16 .917v-.917h-1v.917zm-16 .916v.917h1v-.917zm16 .917v-.917h-1v.917zm-16 .917v.458c0 .166.016.33.048.487l.98-.194A1.51 1.51 0 0 1 1 13.5v-.458zm16 .458v-.458h-1v.458c0 .1-.01.199-.029.293l.981.194c.032-.158.048-.32.048-.487M.421 14.89c.183.272.417.506.69.689l.556-.831a1.51 1.51 0 0 1-.415-.415l-.83.556zm14.469.689c.272-.183.506-.417.689-.69l-.831-.556c-.11.164-.251.305-.415.415l.556.83zm-12.877.373c.158.032.32.048.487.048h.458v-1H2.5c-.1 0-.199-.01-.293-.029zM13.5 16c.166 0 .33-.016.487-.048l-.194-.98A1.51 1.51 0 0 1 13.5 15h-.458v1zm-9.625 0h.917v-1h-.917zm1.833 0h.917v-1h-.917zm1.834-1v1h.916v-1zm1.833 1h.917v-1h-.917zm1.833 0h.917v-1h-.917zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3z"/>
		</svg>
		<a href="${pageContext.request.contextPath}/newKhoaServlet"> &nbsp&nbsp Thêm khoa</a>
	</div>
	 
	<p style="color:red;">${errorString}</p>
	<div class="container text-center center-div">
	    <div class="row row-cols-3">
	        <c:forEach items="${khoaList}" var="khoa">
	            <div class="col bottom">
	                <div class="card" style="width: 400px;">
	                    <div class="card-body card-color">
	                        <h5 class="card-title">Mã khoa: ${khoa.makhoa}</h5>
	                        <h6 class="card-subtitle mb-2 text-muted">Tên khoa: ${khoa.tenkhoa}</h6>
	                        <hr>
	                        <a href="editKhoaServlet?code=${khoa.makhoa}&tenkhoa=${khoa.tenkhoa}" class="btn btn-info">Cập nhật</a>
	                        <a href="./khoa/deleteKhoa.jsp?code=${khoa.makhoa}&tenkhoa=${khoa.tenkhoa}" class="btn btn-danger">Xóa</a>
	                    </div>
	                </div>
	            </div>
	        </c:forEach>
	    </div>
	</div>


</body>
</html>