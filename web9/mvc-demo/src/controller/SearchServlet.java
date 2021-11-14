package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Wife;
import bo.WifeBo;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String key = request.getParameter("select1");
		String value = request.getParameter("valuetext");
		WifeBo bo = new WifeBo();

		List<Wife> wifes = bo.searchWife(key, value);
		if (wifes != null) {
			request.setAttribute("wifes", wifes);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/list.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/error.jsp");
			rd.forward(request, response);
		}
	}

}
