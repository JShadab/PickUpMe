package servlet.customer;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.Utility;
import bean.Booking;
import bean.Customer;
import bean.Expert;
import db.BookingDAO;
import db.ExpertDAO;

public class HireExpertServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		int expertId = Integer.parseInt(req.getParameter("experId"));

		Customer customer = Utility.getCustomer(req);

		if (customer != null) {

			Expert expert = ExpertDAO.getExpert(expertId);

			Booking booking = new Booking();

			booking.setCharge(expert.getRate());
			booking.setCustomerEmail(customer.getEmail());
			booking.setExpertEmail(expert.getEmail());
			booking.setLocation(customer.getAddress());
			booking.setStatus("Booked");
			booking.setTiming(new Date().toString());
			
			BookingDAO.saveBooking(booking);

			req.getRequestDispatcher("/web/secure/findExpert.jsp").forward(req,
					resp);

		} else {
			resp.sendRedirect("/PickMeUp/web/login.jsp?msg="
					+ Utility.LOGIN_FIRST);
		}

	}

}
