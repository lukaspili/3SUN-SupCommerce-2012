<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>SupCommerce</h1>

<p>
<a href="<%= request.getContextPath() %>/listProduct.jsp">Liste des produits</a> |

<% if(session.getAttribute("username") != null) { %>

<a href="<%= request.getContextPath() %>/auth/addProduct.jsp">Nouveau produit</a> |
<a href="<%= request.getContextPath() %>/logout">Deconnexion</a>

<% } else { %>
<a href="<%= request.getContextPath() %>/login.html">Connexion</a>
<% } %>

</p>