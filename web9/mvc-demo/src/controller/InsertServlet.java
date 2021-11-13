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


@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public InsertServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		boolean alive =Boolean.getBoolean(request.getParameter("alive"));
		
		WifeBo bo = new WifeBo();
		if(bo.addWife(name, address, alive)) {
			List<Wife> wifes = bo.getAllWifes();
			request.setAttribute("wifes", wifes);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/list.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/insert.jsp");
			rd.forward(request, response);
		}
		
	}

}
