package servlet.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Customer;
import db.CustomerDAO;

public class UpdateProfileServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		int id = Integer.getInteger(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String address = req.getParameter("address");
		String pincode = req.getParameter("pincode");
		String password = req.getParameter("password");

		Customer customer = new Customer();

		customer.setId(id);
		customer.setAddress(address);
		customer.setContact(contact);
		customer.setEmail(email);
		customer.setName(name);
		customer.setPassword(password);
		customer.setPincode(pincode);

		CustomerDAO.updateCustomer(customer);

		resp
				.sendRedirect("/PickMeUp/web/login.jsp?msg=You are registered successfully.");

	}
}
