package utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Customer;

public class Utility {

	public static Customer getCustomer(HttpServletRequest request) {

		HttpSession session = request.getSession(false);

		if (session != null) {
			Customer customer = (Customer) session.getAttribute("customer");

			return customer;

		}

		return null;
	}

	public static boolean isLogin(HttpServletRequest request) {

		HttpSession session = request.getSession(false);

		return (session != null);
	}

	public static final String LOGIN_FIRST = "Please do login first...";
}
