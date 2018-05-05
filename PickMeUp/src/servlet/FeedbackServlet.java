package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.FeedbackDAO;

import bean.Feedback;

public class FeedbackServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");

		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String message = req.getParameter("message");

		Feedback feedback = new Feedback();

		feedback.setContact(contact);
		feedback.setEmail(email);
		feedback.setFirstName(firstName);
		feedback.setLastName(lastName);
		feedback.setMessage(message);

		FeedbackDAO.saveFeedback(feedback);

		resp
				.sendRedirect("/PickMeUp/web/index.jsp?msg=Your feedback submitted successfully");

	}

}
