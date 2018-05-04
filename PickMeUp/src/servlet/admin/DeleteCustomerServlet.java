package servlet.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.CustomerDAO;

public class DeleteCustomerServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		CustomerDAO.deleteCustomer(id);

		resp
				.sendRedirect("/PickMeUp/web/admin/dashboard.jsp?msg=Customer deleted successfully.");
	}
}
