<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Grade Confirmation</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
</head>

<body>

	<h1>Confirmation, adding grades for <c:out value = "${newGrade.name}"/></h1>
	<table class=table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Type</th>
				<th>Score</th>
				<th>Total</th>
			</tr>
		</thead>
		<tbody>

			<tr>
				<%-- <td>${grade.id}</td> --%>
				<td><c:out value = "${newGrade.name}"/></td>
				<td><c:out value = "${newGrade.type}"/></td>
				<td><fmt:formatNumber type="number" maxFractionDigits="1" value="${newGrade.score}" /></td>
				<td><fmt:formatNumber type="number" maxFractionDigits="1" value="${newGrade.total}" /></td>
			
			</tr>

		</tbody>
	</table>
	<a href="/" class="button">Display Grades</a>

</body>
</html>