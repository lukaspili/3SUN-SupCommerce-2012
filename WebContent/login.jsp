<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>

<%@ include file="/includes/header.jsp"%>

<h2>Connexion utilisateur</h2>

<c:if test="${errors}">
	<p style="color: red">Des erreurs sont présentes sur le formulaire</p>
</c:if>

<form method="POST" action="login">

	<p>
		<label for="username">Name : </label>
		<input type="text" id="username" name="username" />
	</p>
	
	<p>
		<label for="password">Password : </label>
		<input type="password" id="password" name="password" />
	</p>
	
	<p>	
		<input type="submit" value="Login" />
	</p>
</form>

<%@ include file="/includes/footer.jsp" %>

</body>
</html>