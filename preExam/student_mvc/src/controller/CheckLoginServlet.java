package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Account;
import model.bo.AccountBo;
import model.bo.KhoaBo;
import model.bo.SinhVienBo;

/**
 * Servlet implementation class CheckLoginServlet
 */
@WebServlet("/CheckLoginServlet")
public class CheckLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		AccountBo accountbo = new AccountBo();
		KhoaBo khoabo = new KhoaBo();
		SinhVienBo svbo = new SinhVienBo();

		
		if(accountbo.isExist(username, password)) {
			Account account = new Account(username, password);
			request.getSession().setAttribute("account",account);
			request.setAttribute("khoas", khoabo.getAll());
			request.setAttribute("svs", svbo.getAll());
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/list.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("login.jsp");
		}
	}

}
