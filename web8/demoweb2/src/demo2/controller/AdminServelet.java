package demo2.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import demo2.bo.CheckLoginBo;
import demo2.dao.AdminDao;
import demo2.model.Admin;

@WebServlet("/AdminServelet")
public class AdminServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CheckLoginBo bo = new CheckLoginBo();
 
    public AdminServelet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = "My sweet home";
		if(bo.isExist(username, password)) {
			request.setAttribute("address", address);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/welcome.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("/WEB-INF/view/login.jsp");
		}
		
	}
	

}
