<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/theme/styletable.css"/>" rel="stylesheet">
</head>


<body>
	<!-- test -->

	<table id="customers">
		<tr>
			<th>STT</th>
			<th>User Name</th>
			<th>PassWord</th>
			<th>Tên Thật Người Dung</th>
			<th>Quyền</th>
		</tr>
		<c:forEach var="admin" items="${listad}">
			<tr>
				<td>${admin.id}</td>
				<td>${admin.userName}</td>
				<td>${admin.passWord}</td>
				<td>${admin.tenUser}</td>
				<td>${admin.quyen}</td>
			</tr>
		</c:forEach>

	</table>

</html>