package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.SinhVien;
import model.bo.KhoaBo;
import model.bo.SinhVienBo;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String msv = request.getParameter("msv");
		SinhVienBo bo = new SinhVienBo();
		KhoaBo khoabo = new KhoaBo();
		SinhVien sv = bo.getSvByMsv(msv);

		request.setAttribute("sv", sv);
		request.setAttribute("khoas", khoabo.getAll());

		RequestDispatcher rd = getServletContext().getRequestDispatcher("/update.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SinhVienBo svbo = new SinhVienBo();
		KhoaBo khoaBo = new KhoaBo();
		
		String msv = request.getParameter("msv");
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String makhoa = request.getParameter("select");
		svbo.UpdateSinhVien(new SinhVien(msv, name, Boolean.parseBoolean(sex), makhoa));

		request.setAttribute("khoas", khoaBo.getAll());
		request.setAttribute("svs", svbo.getAll());

		RequestDispatcher dispatcher = request.getRequestDispatcher("/list.jsp");
		dispatcher.forward(request, response);
	}

}
