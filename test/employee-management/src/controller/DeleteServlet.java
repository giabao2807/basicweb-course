package controller;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.NhanVien;
import model.bo.NhanVienBo;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int index = Integer.parseInt(request.getParameter("index"));
		NhanVienBo nvbo = new NhanVienBo();

		if (index == 1) {
			int idnv = Integer.parseInt(request.getParameter("idnv"));
			nvbo.deleteById(idnv);
			List<NhanVien> nvs = nvbo.getAll();
			request.setAttribute("nvs", nvs);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/deleteone.jsp");
			rd.forward(request, response);
		} else if (index == 2) {
			String[] idnv = request.getParameterValues("IDNVList");
			for (String id : idnv) {
				nvbo.deleteById(Integer.parseInt(id));
			}
			List<NhanVien> nvs = nvbo.getAll();
			request.setAttribute("nvs", nvs);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/deletelist.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
