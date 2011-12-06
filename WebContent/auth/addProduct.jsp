<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add product</title>
</head>
<body>

	<%@ include file="/includes/header.jsp" %>

	<h2>Nouveau produit</h2>
	
	<c:if test="${errors}">
		<p style="color: red">Des erreurs sont présentes sur le formulaire</p>
	</c:if>

	<form action="<%= request.getContextPath() %>/auth/addProduct" method="post">

		<p>
			<label for="name">Nom :</label>
			<input type="text" size="40" name="name" id="name" />
		</p>

		<p>
			<label for="content">Description :</label>
			<textarea name="content" id="content" cols="40"></textarea>
		</p>

		<p>
			<label for="price">Prix :</label>
			<input type="text" size="10" name="price" id="price" />
		</p>

		<p>
			<input type="submit" value="Ajouter" />
		</p>

	</form>
	
	<%@ include file="/includes/footer.jsp" %>

</body>
</html>