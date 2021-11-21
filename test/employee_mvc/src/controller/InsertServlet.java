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
import model.bo.NhanVienBo;

/**
 * Servlet implementation class InsertServlet
 */
@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public InsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hoten = request.getParameter("hoten");
		String diachi = request.getParameter("diachi");
		String idpb = request.getParameter("select");
		NhanVienBo nvbo = new NhanVienBo();
		
		NhanVien nv = new NhanVien(hoten, idpb, diachi);
		nvbo.save(nv);
		List<NhanVien> nvs = nvbo.getAll();
		request.setAttribute("nvs", nvs);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/listnv.jsp");
		rd.forward(request, response);
	}

}
