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
import com.supinfo.sun.supcommerce.exception.UnknownProductException;

@WebServlet(urlPatterns = "/showProduct")
public class ShowProductServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html");

		String idParam = req.getParameter("id");

		long id = 0;
		try {
			id = Long.valueOf(idParam);
		} catch (NumberFormatException e) {
			resp.sendError(404, "Invalid id : " + id);
			return;
		}

		SupProduct product = null;

		try {
			product = SupProductDao.findProductById(id);
		} catch (UnknownProductException e) {
			resp.sendError(404, "Product not found for id : " + id);
			return;
		}

		PrintWriter out = resp.getWriter();

		out.println("<p>");
		out.println("<strong>" + product.getName() + "</strong><br />");
		out.println(product.getContent() + "<br />");
		out.println(product.getPrice());
		out.println("</p>");
	}
}
