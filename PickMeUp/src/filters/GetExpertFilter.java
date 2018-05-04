package filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import bean.Expert;
import db.ExpertDAO;

public class GetExpertFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {

		int id = Integer.parseInt(req.getParameter("id"));

		Expert expert = ExpertDAO.getExpert(id);

		req.setAttribute("expert", expert);

		chain.doFilter(req, resp);

	}

	public void init(FilterConfig arg0) throws ServletException {

	}

}
