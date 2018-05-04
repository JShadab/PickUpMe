package servlet.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.Utility;

import bean.Customer;

import db.CustomerDAO;

public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String type = req.getParameter("type");
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		if ("customer".equalsIgnoreCase(type)) {

			Customer customer = CustomerDAO.getCustomer(email, password);

			if (customer != null) {

				HttpSession session = req.getSession(false);

				if (session == null) {
					session = req.getSession(true);
				}

				session.setAttribute("customer", customer);

				resp
						.sendRedirect("/PickMeUp/web/index.jsp?msg=Login Successful...");

			} else {

				resp.sendRedirect("/PickMeUp/web/login.jsp?msg="
						+ Utility.LOGIN_FIRST);
			}

		} else {

			Customer admin = CustomerDAO.getCustomer(email, password);

			if (admin != null) {

				HttpSession session = req.getSession(false);

				if (session == null) {
					session = req.getSession(true);
				}

				session.setAttribute("customer", admin);

				resp
						.sendRedirect("/PickMeUp/web/admin/dashboard.jsp?msg=Login Successful...");

			} else {

				resp
						.sendRedirect("/PickMeUp/web/login.jsp?msg=Login Failed...");
			}

		}
	}
}
