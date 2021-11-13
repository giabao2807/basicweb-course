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
import bo.CheckLoginBo;

@WebServlet("/CheckLoginServlet")
public class CheckLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CheckLoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		CheckLoginBo bo = new CheckLoginBo();
		
		if(bo.isExistAcount(username, password)) {
			List<Wife> wifes = bo.getAllWifes();
			request.setAttribute("wifes", wifes);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/welcome.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/view/login.jsp");
			rd.forward(request, response);
		}
	}

}
