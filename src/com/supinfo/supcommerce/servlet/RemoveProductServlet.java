package com.supinfo.supcommerce.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.supinfo.sun.supcommerce.doa.SupProductDao;
import com.supinfo.sun.supcommerce.exception.UnknownProductException;

@WebServlet(urlPatterns="/auth/removeProduct")
public class RemoveProductServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String idParam = req.getParameter("id");

		long id = 0;
		try {
			id = Long.valueOf(idParam);
		} catch (NumberFormatException e) {
			resp.sendError(404, "Invalid id : " + id);
			return;
		}
		
		try {
			SupProductDao.removeProduct(id);
		} catch (UnknownProductException e) {
			resp.sendError(404, "Product not found for id : " + id);
			return;
		}
		
		resp.sendRedirect(req.getContextPath() + "/listProduct.jsp");
	}

}
