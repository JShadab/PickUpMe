package servlet.admin;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Expert;
import db.ExpertDAO;

public class AddExpertServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String address = req.getParameter("address");
		String pincode = req.getParameter("pincode");
		String category = req.getParameter("category");

		Expert expert = new Expert();

		expert.setAddress(address);
		expert.setContact(contact);
		expert.setEmail(email);
		expert.setName(name);
		expert.setPincode(pincode);
		expert.setCategory(category);

		try {
			ExpertDAO.insertExpert(expert);
			resp
					.sendRedirect("/PickMeUp/web/admin/dashboard.jsp?msg=Expert added successfully.");

		} catch (SQLException e) {

			// Duplicate key or integrity constraint violation message from
			// server:

			resp
					.sendRedirect("/PickMeUp/web/admin/dashboard.jsp?msg=Email already exists.");
			e.printStackTrace();
		}

	}
}
