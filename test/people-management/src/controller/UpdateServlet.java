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


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		PeopleBo ppbo = new PeopleBo();
		People pp= ppbo.getById(id);
		request.setAttribute("pp", pp);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/update.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String lastname = request.getParameter("lastname");
		String firstname = request.getParameter("firstname");
		String roles = request.getParameter("roles");
		
		People pp = new People(id,lastname, firstname, roles);
		
		PeopleBo ppbo = new PeopleBo();
		
		if(ppbo.update(pp)) {
			List<People> pps = ppbo.getAll();
			request.setAttribute("pps", pps);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/listpp.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/errorpp.jsp");
			rd.forward(request, response);
		}
	}

}
