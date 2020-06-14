package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Delivery_non_permanentDao;
import dao.Delivery_non_permanentDaoImpl;
import entity.Delivery_non_permanent;


public class delivery_del_sev extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Delivery_non_permanentDao delivery_non_permanentDao = null;
   
    public delivery_del_sev() {
    	delivery_non_permanentDao = new Delivery_non_permanentDaoImpl();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String supplier_id = request.getParameter("supplier_id");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		delivery_non_permanentDao.delete(Integer.parseInt(id));
		request.setAttribute("delete", "1");
		request.setAttribute("last_name", last_name);
		request.setAttribute("first_name", first_name);
		listDeliveries(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	public void listDeliveries(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String supplier_id = request.getParameter("supplier_id");
		int supplier_id_int = Integer.parseInt(supplier_id);
		List<Delivery_non_permanent> list = delivery_non_permanentDao.get(supplier_id_int);
		request.setAttribute("supplier_id", supplier_id);
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/supplier_profile.jsp");
		dispatcher.forward(request, response);
	}

}
