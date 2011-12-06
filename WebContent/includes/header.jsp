<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>SupCommerce</h1>

<p>
	<a href="<%=request.getContextPath()%>/listProduct">Tous les produits</a> |
	<a href="<%=request.getContextPath()%>/cheaperProduct">Produits pas chers</a> |

	<c:choose>
		<c:when test="${not empty username}">
			<a href="<%=request.getContextPath()%>/auth/addProduct">Nouveau produit</a> |
			<a href="<%=request.getContextPath()%>/auth/addCategory">Nouvelle catégorie</a> |
			<a href="<%=request.getContextPath()%>/logout">Deconnexion</a>
		</c:when>

		<c:otherwise>
			<a href="<%=request.getContextPath()%>/login">Connexion</a>
		</c:otherwise>
	</c:choose>

</p>