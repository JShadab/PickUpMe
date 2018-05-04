package servlet.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.Utility;
import bean.Customer;
import bean.Expert;
import db.ExpertDAO;

public class FindExpertServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String key = req.getParameter("key");
		String pincode = req.getParameter("pincode");

		Customer customer = Utility.getCustomer(req);

		if (customer != null) {

			if (pincode == null || pincode.isEmpty()) {

				pincode = customer.getPincode();
			}

			List<Expert> experts = ExpertDAO.getAllExpertsByPincode(key,
					pincode);

			req.setAttribute("experts", experts);
			req.setAttribute("pincode", pincode);

			req.getRequestDispatcher("/web/secure/findExpert.jsp").forward(req,
					resp);

		} else {
			resp.sendRedirect("/PickMeUp/web/login.jsp?msg="
					+ Utility.LOGIN_FIRST);
		}

	}

}
