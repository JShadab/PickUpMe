package filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.Utility;

public class LoginCheckerFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {

		if (Utility.isLogin((HttpServletRequest) req)) {

			chain.doFilter(req, resp);
		} else {

			((HttpServletResponse) resp)
					.sendRedirect("/PickMeUp/web/login.jsp?msg="
							+ Utility.LOGIN_FIRST);
		}
	}

	public void init(FilterConfig arg0) throws ServletException {

	}

}
