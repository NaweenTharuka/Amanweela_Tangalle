package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.InventoryDao;
import dao.InventoryDaoImpl;
import entity.Inventory;

public class inventory_change extends HttpServlet {
	private static final long serialVersionUID = 1L;
	InventoryDao inventoryDao = null;
    
    public inventory_change() {
    	inventoryDao = new InventoryDaoImpl();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String btnType = request.getParameter("btn");
		
		String date = request.getParameter("date");
		String room_id = request.getParameter("room_id");
		String your_name = request.getParameter("your_name");
		String adult_count = request.getParameter("adult_count");
		String item_quantity = request.getParameter("item_quantity");
		String liquor_quantity = request.getParameter("liquor_quantity");
		String choose_extra_items = request.getParameter("choose_extra_items");
		String choose_liquor_items = request.getParameter("choose_liquor_items");
		
		int id_int = Integer.parseInt(id);
		int adult_count_int = Integer.parseInt(adult_count);
		int liquor_quantity_int = Integer.parseInt(liquor_quantity);
		int item_quantity_int = Integer.parseInt(item_quantity);
		
		Inventory i = new Inventory();
		
		i.setId(id_int);
		i.setDate(date);
		i.setRoom_id(room_id);
		i.setYour_name(your_name);
		i.setAdults(adult_count);
		i.setItem_quantity(item_quantity);
		i.setLiquor_quantity(liquor_quantity);
		i.setExtra_item(choose_extra_items);
		i.setLiquor(choose_liquor_items);
			
		PrintWriter out=response.getWriter();
		if(btnType.equals("DELETE"))
		{
			inventoryDao.Delete(id_int);
			
			out.println("<script type=\"text/javascript\">");
			out.print("alert('Delete Success.');");
			out.println("location='inventory3.jsp'");
			out.println("</script>");
		}
		else 
		{
			if(room_id != null && your_name != null) 
			{
				inventoryDao.Update(id_int, i);
				
			}
			out.println("success");
			response.sendRedirect("inventory3.jsp");
		}
		
	}

}
