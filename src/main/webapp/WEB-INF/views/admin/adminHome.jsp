<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/conmon/taglib.jsp"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/theme/styletable.css"/>" rel="stylesheet">
</head>
<body>
	<div>
		<h1>Admin IVS NHA TRANG</h1>
	</div>
	<table id="customers">
	
		<tr>
		<h1>Bang Thông Tin USER</h1>
			<th>STT</th>
			<th>User Name</th>
			<th>PassWord</th>
			<th>Tên Thật Người Dung</th>
			<th>Quyền</th>
			<th>Chức Năng</th>
		</tr>
		<c:forEach var="admin" items="${listad}">
			<tr>
				<td>${admin.id}</td>
				<td>${admin.userName}</td>
				<td>${admin.passWord}</td>
				<td>${admin.tenUser}</td>
				<td>${admin.quyen}</td>
				<td>
				<button>Insert</button> 
				<button>Edit</button> 
				<button>Del</button> 
				</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>