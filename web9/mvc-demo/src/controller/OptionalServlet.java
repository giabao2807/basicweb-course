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

@WebServlet("/OptionalServlet")
public class OptionalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OptionalServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int index = Integer.parseInt(request.getParameter("index"));
		WifeBo bo = new WifeBo();

		switch (index) {
		case 0: {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/welcome1.jsp");
			rd.forward(request, response);
			break;
		}
		case 1: {
			List<Wife> wifes = bo.getAllWifes();
			request.setAttribute("wifes", wifes);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/list.jsp");
			rd.forward(request, response);
			break;
		}
		case 2: {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/insert.jsp");
			rd.forward(request, response);
			break;
		}
		case 3: {
			List<Wife> wifes = bo.getAllWifes();
			request.setAttribute("wifes", wifes);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/updatelist.jsp");
			rd.forward(request, response);
			break;
		}
		case 4: {
			List<Wife> wifes = bo.getAllWifes();
			request.setAttribute("wifes", wifes);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/deletelist.jsp");
			rd.forward(request, response);
			break;
		}
		case 5: {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/search.jsp");
			rd.forward(request, response);
			break;
		}
		case 11: {
			int id = Integer.parseInt(request.getParameter("id"));
			Wife wife = bo.getWifeByID(id);
			request.setAttribute("wife", wife);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/update.jsp");
			rd.forward(request, response);
			break;
		}
		default:
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/welcome.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
