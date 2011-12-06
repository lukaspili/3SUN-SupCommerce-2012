package com.supinfo.supcommerce.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.supinfo.sun.supcommerce.bo.SupProduct;
import com.supinfo.sun.supcommerce.doa.SupProductDao;

@WebServlet(urlPatterns = "/auth/basicInsert")
public class InsertSomeProductServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		SupProduct product = new SupProduct();
		product.setName("Foo");
		product.setContent("Bar");
		product.setPrice(10F);

		SupProductDao.addProduct(product);

		resp.setContentType("text/html");

		PrintWriter out = resp.getWriter();
		out.println("<p>Le produit a bien été ajouté</p>");
	}
}
