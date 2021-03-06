package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.People;
import model.bo.PeopleBo;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key = request.getParameter("key");
		String value = request.getParameter("value");
		
		PeopleBo ppbo = new PeopleBo();
		List<People> pps = ppbo.search(key, value);
		Long count = pps.stream().count();
		if (count !=0 ) {
			request.setAttribute("pps", pps);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/listpp.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/errorpp.jsp");
			rd.forward(request, response);
		}
	}

}
