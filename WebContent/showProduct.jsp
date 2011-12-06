<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show product</title>
</head>
<body>

	<%@ include file="/includes/header.jsp"%>

	<h2><c:out value="${product.name}" /></h2>

	<p>
		Description :<br />
		<c:out value="${product.content}" />
	</p>
	
	<p>
		<c:out value="${product.price}" /> euros

		<c:if test="${not empty username}">
			<form method="post" action="<%=request.getContextPath()%>/auth/removeProduct">
				<input type="hidden" name="id" value="${product.id}" />
				<input type="submit" value="Supprimer ce produit">
			</form>
		</c:if>
	</p>
	
	<%@ include file="/includes/footer.jsp" %>
	
</body>
</html>