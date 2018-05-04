package servlet.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.ExpertDAO;

public class DeleteExpertServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		ExpertDAO.deleteExpert(id);

		resp
				.sendRedirect("/PickMeUp/web/admin/dashboard.jsp?msg=Expert deleted successfully.");
	}
}
