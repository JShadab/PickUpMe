package servlet.admin;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Expert;
import db.ExpertDAO;

public class EditExpertServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String address = req.getParameter("address");
		String pincode = req.getParameter("pincode");
		String category = req.getParameter("category");

		Expert expert = new Expert();

		expert.setId(id);
		expert.setAddress(address);
		expert.setContact(contact);
		expert.setEmail(email);
		expert.setName(name);
		expert.setPincode(pincode);
		expert.setCategory(category);

		ExpertDAO.updateExpert(expert);
		resp
				.sendRedirect("/PickMeUp/web/admin/dashboard.jsp?msg=Expert updated successfully.");

	}
}
