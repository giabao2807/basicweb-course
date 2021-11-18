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


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PeopleBo ppbo = new PeopleBo();
		int id = Integer.parseInt(request.getParameter("id"));
		ppbo.deleteById(id);
		List<People> pps = ppbo.getAll();
		request.setAttribute("pps", pps);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/listpp.jsp");
		rd.forward(request, response);
	}

}
