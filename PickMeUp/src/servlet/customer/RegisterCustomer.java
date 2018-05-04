package servlet.customer;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Customer;
import db.CustomerDAO;

public class RegisterCustomer extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String address = req.getParameter("address");
		String pincode = req.getParameter("pincode");
		String password = req.getParameter("password");

		Customer customer = new Customer();

		customer.setAddress(address);
		customer.setContact(contact);
		customer.setEmail(email);
		customer.setName(name);
		customer.setPassword(password);
		customer.setPincode(pincode);

		try {
			CustomerDAO.insertCustomer(customer);
			resp
					.sendRedirect("/PickMeUp/web/login.jsp?msg=You are registered successfully.");

		} catch (SQLException e) {

			// Duplicate key or integrity constraint violation message from
			// server:

			resp
					.sendRedirect("/PickMeUp/web/login.jsp?msg=Email already exists.");
			e.printStackTrace();
		}

	}
}
