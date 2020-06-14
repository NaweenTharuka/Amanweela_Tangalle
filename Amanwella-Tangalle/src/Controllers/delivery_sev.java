package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

public class delivery_sev extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Delivery_non_permanentDao delivery_non_permanentDao = null;
   
    public delivery_sev() {
    	delivery_non_permanentDao = new Delivery_non_permanentDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			listDeliveries(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String supplier_id = request.getParameter("supplier_id");
		String date = request.getParameter("date");
		String item_1 = request.getParameter("item_1");
		String cost_per_one_1 = request.getParameter("cost_per_one_1");                                                    
		String quantity_1 = request.getParameter("quantity_1");
		String item_2 = request.getParameter("item_2");
		String cost_per_one_2 = request.getParameter("cost_per_one_2");                                                    
		String quantity_2 = request.getParameter("quantity_2");
		String item_3 = request.getParameter("item_3");
		String cost_per_one_3 = request.getParameter("cost_per_one_3");                                                    
		String quantity_3 = request.getParameter("quantity_3");
		
		int cost_per_one_1_int = Integer.parseInt(cost_per_one_1);
		int quantity_1_int = Integer.parseInt(quantity_1);
		Integer total = cost_per_one_1_int*quantity_1_int;
		int supplier_id_int = Integer.parseInt(supplier_id);
		
		if(!(cost_per_one_2.isEmpty()) && !(quantity_2.isEmpty())) {
			int cost_per_one_2_int = Integer.parseInt(cost_per_one_2);
			int quantity_2_int = Integer.parseInt(quantity_2);
			total= total+ cost_per_one_2_int*quantity_2_int;
			
			if(!(cost_per_one_3.isEmpty()) && !(quantity_3.isEmpty())) {
				int cost_per_one_3_int = Integer.parseInt(cost_per_one_3);
				int quantity_3_int = Integer.parseInt(quantity_3);
				total= total+ cost_per_one_3_int*quantity_3_int;
			}
		}
		
		PrintWriter writer = response.getWriter();
		writer.println(supplier_id);
		writer.println(date);
		writer.println(item_1);
		writer.println(cost_per_one_1);
		writer.println(quantity_1);
		writer.println(item_2);
		writer.println(cost_per_one_2);
		writer.println(quantity_2);
		writer.println(item_3);
		writer.println(cost_per_one_3);
		writer.println(quantity_3);
		writer.println(total);
		
		Delivery_non_permanent dnp = new Delivery_non_permanent();
		dnp.setSupplier_id(supplier_id_int);
		dnp.setDate(date);
		dnp.setItem1(item_1);
		dnp.setItem1_costPer1(cost_per_one_1);
		dnp.setItem1_quantity(quantity_1);
		dnp.setItem2(item_2);
		dnp.setItem2_costPer1(cost_per_one_2);
		dnp.setItem2_quantity(quantity_2);
		dnp.setItem3(item_3);
		dnp.setItem3_costPer1(cost_per_one_3);
		dnp.setItem3_quantity(quantity_3);
		dnp.setTotal(total);
		
		request.setAttribute("totalalert", total);
		
					
		delivery_non_permanentDao.save(dnp);
		doGet(request, response);		
	}
	
	public void listDeliveries(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String supplier_id = request.getParameter("supplier_id");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		int supplier_id_int = Integer.parseInt(supplier_id);
		List<Delivery_non_permanent> list = delivery_non_permanentDao.get(supplier_id_int);
		request.setAttribute("supplier_id", supplier_id);
		request.setAttribute("first_name", first_name);
		request.setAttribute("last_name", last_name);
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/supplier_profile.jsp");
		dispatcher.forward(request, response);
	}		
}

