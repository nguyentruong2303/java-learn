<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Booking List</h1>
	<table border="2" width="90%">
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>Phone</th>
		<th>Date</th>
		<th>Num</th>
		<th>Booking</th>
		<th>Memo</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	 <c:forEach var="bk" items="${listBook}">
		<tr>
			<td>${bk.bkid}</td>
			<td>${bk.bkname}</td>
			<td>${bk.bkemail }</td>
			<td>${bk.bkphone }</td>
			<td>${bk.bktime }</td>
			<td>${bk.bknum }</td>
			<td>${bk.booking }</td>
			<td>${bk.bkmemo }</td>
			<td><a href="<c:url value='/editBooking/${bk.bkid}' />">Edit</a></td>
			<td><a href="<c:url value='/deleteBooking/${bk.bkid}' />">Delete</a></td>
		</tr>
	</c:forEach>
	</table>
	
	<a href="booking">Comeback Booking</a>
</body>
</html>