package filters;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import db.CustomerDAO;
import db.ExpertDAO;
import db.ServiceDAO;

import bean.Customer;
import bean.Expert;
import bean.ServiceDetails;

public class AdminDashboardFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {

		List<Expert> allExperts = ExpertDAO.getAllExperts();
		List<Customer> allCustomers = CustomerDAO.getAllCustomers();
		List<ServiceDetails> allServices=ServiceDAO.getAllServices();
		
		
		req.setAttribute("allExperts", allExperts);
		req.setAttribute("allCustomers", allCustomers);
		req.setAttribute("allServices", allServices);

		chain.doFilter(req, resp);

	}

	public void init(FilterConfig arg0) throws ServletException {
	
	}

}
