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
import entity.Supplier;

public class delivery_details extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Delivery_non_permanentDao delivery_non_permanentDao = null;
	
    
    public delivery_details() {
    	delivery_non_permanentDao = new Delivery_non_permanentDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getSingleDelivery(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	private void getSingleDelivery(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String supplier_id = request.getParameter("supplier_id");
		String id = request.getParameter("id");
		int supplier_id_int = Integer.parseInt(supplier_id);
		List<Delivery_non_permanent> list = delivery_non_permanentDao.get(supplier_id_int);
		Delivery_non_permanent delivery_non_permanent = delivery_non_permanentDao.getSingleDelivery(Integer.parseInt(id));
		request.setAttribute("supplier_id", supplier_id);
		request.setAttribute("list", list);
		request.setAttribute("delivery_non_permanent", delivery_non_permanent);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/supplier_profile.jsp");
		dispatcher.forward(request, response);
	}
}
