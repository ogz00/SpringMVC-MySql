<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/resource/css/main.css"
	rel="stylesheet" type="text/css">
<title>Offers</title>
</head>
<body>

	<br />




	<h3>OFFERS WIA SERVICE LAYER</h3>
	<table class="CSSTableGenerator">
		<tr>
			<td>Name</td>
			<td>Email</td>
			<td>Offer</td>
		</tr>
		<c:forEach var="offer" items="${offers}">

			<tr>
				<td><c:out value="${offer.name}"></c:out></td>

				<td><c:out value="${offer.email}"></c:out></td>

				<td><c:out value="${offer.text}"></c:out></td>
			</tr>

		</c:forEach>
	</table>
	<br />
	<table class="CSSTableGenerator">
		<tr>
			<td><a href="${pageContext.request.contextPath}/createoffer">Create
					Offer</a></td>

			<td><a href="${pageContext.request.contextPath}/">Home</a></td>
		</tr>
	</table>

</body>
</html>