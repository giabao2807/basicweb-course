package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.PhongBan;
import model.bo.PhongBanBo;

/**
 * Servlet implementation class UpdateListServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idpb = request.getParameter("idpb");
		String tenpb = request.getParameter("tenpb");
		String mota = request.getParameter("mota");
		
		PhongBan pb = new PhongBan(idpb, tenpb, mota);
		
		PhongBanBo pbbo = new PhongBanBo();
		
		if(pbbo.update(pb)) {
			List<PhongBan> pbs = pbbo.getAll();
			request.setAttribute("pbs", pbs);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/updatelist.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/updatedetail.jsp");
			rd.forward(request, response);
		}
	}

}
