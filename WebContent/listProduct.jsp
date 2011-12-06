<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List products</title>
</head>
<body>

	<%@ include file="/includes/header.jsp"%>

	<h2>Liste des produits</h2>

	<c:forEach items="${products}" var="p">
		<p>
			<strong> <c:out value="${p.name}" /> </strong>
		</p>
		
		<p>
			Description :<br />
			<c:out value="${p.content}" />
		</p>
		
		<p>
			<c:out value="${p.price}" /> euros <br />
			<a href="showProduct?id=${p.id}">Voir en détail</a>

			<c:if test="${not empty username}">
				<br />
				<form method="post" action="<%=request.getContextPath()%>/auth/removeProduct">
					<input type="hidden" name="id" value="${p.id}" />
					<input type="submit" value="Supprimer ce produit">
				</form>
			</c:if>
		</p>
	</c:forEach>

	<%@ include file="/includes/footer.jsp"%>

</body>
</html>