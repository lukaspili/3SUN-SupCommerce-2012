package com.supinfo.supcommerce.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.supinfo.sun.supcommerce.bo.SupProduct;
import com.supinfo.sun.supcommerce.doa.SupProductDao;

@WebServlet(urlPatterns="/auth/addProduct")
public class AddProductServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String name = req.getParameter("name");
		String content = req.getParameter("content");
		String priceParam = req.getParameter("price");
		
		if(name == null || name.trim().isEmpty() || content == null || content.trim().isEmpty()) {
			resp.sendRedirect(req.getContextPath() + "/auth/addProduct.jsp");
			return;
		}
		
		float price = 0;
		
		try {
			price = Float.valueOf(priceParam);
		} catch (NumberFormatException e) {
			resp.sendRedirect(req.getContextPath() + "/auth/addProduct.jsp");
			return;
		}
		
		SupProduct product = new SupProduct();
		product.setName(name);
		product.setContent(content);
		product.setPrice(price);
		
		SupProductDao.addProduct(product);
		
		resp.sendRedirect(req.getContextPath() + "/showProduct?id=" + product.getId());
	}
}
