<%@page import="com.supinfo.sun.supcommerce.doa.SupProductDao"%>
<%@page import="com.supinfo.sun.supcommerce.bo.SupProduct"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List products</title>
</head>
<body>

	<% List<SupProduct> products = SupProductDao.getAllProducts(); %>

	<h2>Liste des produits</h2>

	<% for (SupProduct p : products) { %>
	<p>
		<strong><%=p.getName()%></strong><br />
		<%=p.getPrice()%> euros<br />
		<a href="<%=request.getContextPath()%>/showProduct.jsp?id=<%=p.getId()%>">Voir le produit</a>
	</p>
	<% } %>

</body>
</html>