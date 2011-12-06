package com.supinfo.supcommerce.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.supinfo.sun.supcommerce.bo.SupProduct;
import com.supinfo.sun.supcommerce.doa.SupProductDao;

@WebServlet(urlPatterns = { "/listProduct", "/" })
public class ListProductServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<SupProduct> products = SupProductDao.getAllProducts();

		req.setAttribute("products", products);

		RequestDispatcher rd = req.getRequestDispatcher("/listProduct.jsp");
		rd.forward(req, resp);
	}
}
