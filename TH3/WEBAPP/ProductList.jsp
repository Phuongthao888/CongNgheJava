<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách sản phẩm</title>
</head>
<body>
	<h3>Product List</h3>
	<p style="color:red;">${errorString}</p>
	
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Type</th>
			<th>Price</th>
			<th>Image</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		
		<c:forEach items="${productList}" var="product">
		<tr>
			<td>${product.ID}</td>
			<td>${product.name}</td>
			<td>${product.type}</td>
			<td>${product.price}</td>
			<td>${product.image}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>