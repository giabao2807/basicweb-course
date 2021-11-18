package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.NhanVien;
import model.bean.PhongBan;
import model.bo.NhanVienBo;
import model.bo.PhongBanBo;
import model.dao.PhongBanDao;

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
		NhanVienBo nvbo = new NhanVienBo();
		PhongBanBo pbbo = new PhongBanBo();

		switch (index) {
		case 0: {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/main.jsp");
			rd.forward(request, response);
			break;
		}
		case 1: {
			List<NhanVien> nvs = nvbo.getAll();
			request.setAttribute("nvs", nvs);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/listnv.jsp");
			rd.forward(request, response);
			break;
		}
		case 2: {
			List<PhongBan> pbs = pbbo.getAll();
			request.setAttribute("pbs", pbs);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/listpb.jsp");
			rd.forward(request, response);
			break;
		}
		case 3: {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/searchnv.jsp");
			rd.forward(request, response);
			break;
		}
		case 4: {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
			break;
		}
		case 5: {
			List<PhongBan> pbs = pbbo.getAll();
			request.setAttribute("pbs", pbs);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/updatelist.jsp");
			rd.forward(request, response);
			break;
		}

		case 11: {
			String idpb = request.getParameter("idpb");
			PhongBan pb = pbbo.getById(idpb);
			System.out.println(idpb);
			if (pb != null) {
				request.setAttribute("pb", pb);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/updatedetail.jsp");
				rd.forward(request, response);

			} else {
				List<PhongBan> pbs = pbbo.getAll();
				request.setAttribute("pbs", pbs);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/updatelist.jsp");
				rd.forward(request, response);
			}
			break;
		}
		default:
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/main.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
