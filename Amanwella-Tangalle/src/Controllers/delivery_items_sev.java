package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DeliveryItemDao;
import dao.DeliveryItemDaoImpl;
import entity.Delivery_items;
import entity.Supplier;

public class delivery_items_sev extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DeliveryItemDao deliveryItemDao = null;
    
    public delivery_items_sev() {
    	deliveryItemDao = new DeliveryItemDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		
		SimpleDateFormat availDate = new SimpleDateFormat("dd-MM-yyyy");
		Date date_date = null;
		try {
			date_date = (Date) availDate.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Integer cost_per_one_1_int = Integer.parseInt(cost_per_one_1);
		Integer quantity_1_int = Integer.parseInt(quantity_1);
		
		if(!(cost_per_one_2 == null) && !(quantity_2 == null)) {
			
			if(!(cost_per_one_3 == null)&& !(quantity_3 == null)) {
				PrintWriter writer = response.getWriter();
				writer.println("world");
			}
		}
				
		PrintWriter writer = response.getWriter();
		writer.println("hello");
		
			
		}
	
	}


