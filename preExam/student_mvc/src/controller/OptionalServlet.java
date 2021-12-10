package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.AccountBo;
import model.bo.KhoaBo;
import model.bo.SinhVienBo;

/**
 * Servlet implementation class OptionalServlet
 */
@WebServlet("/OptionalServlet")
public class OptionalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OptionalServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int index = Integer.parseInt(request.getParameter("index"));
		AccountBo accountbo = new AccountBo();
		SinhVienBo svbo = new SinhVienBo();
		KhoaBo khoabo = new KhoaBo();
		
		switch (index) {
		case 0: {
			request.setAttribute("svs", svbo.getAll());
			request.setAttribute("khoas", khoabo.getAll());
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/list.jsp");
			rd.forward(request, response);
			break;
		}
		case 1: {
			request.setAttribute("svs", svbo.getAll());
			request.setAttribute("khoas", khoabo.getAll());
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/insert.jsp");
			rd.forward(request, response);
			break;
		}
		default:
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
