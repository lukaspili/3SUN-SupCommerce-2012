<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SupCommerce - Nouvelle catégorie</title>
</head>
<body>

<%@ include file="/includes/header.jsp" %>

<h2>Nouvelle catégorie</h2>

<c:if test="${errors}">
	<p style="color: red">Des erreurs sont présentes sur le formulaire</p>
</c:if>

<form action="<%= request.getContextPath() %>/auth/addCategory" method="post">
	
	<p>
		<label for="name">Name :</label>
		<input type="text" name="name" id="" />
	</p>
	
	<p>
		<input type="submit" value="Add" />
	</p>
</form>

<%@ include file="/includes/footer.jsp" %>

</body>
</html>