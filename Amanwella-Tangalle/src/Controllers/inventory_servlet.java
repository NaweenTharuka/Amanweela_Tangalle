package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;

import dao.InventoryDao;
import dao.InventoryDaoImpl;
import dao.ReservationDao;
import dao.ReservationDaoImpl;
import entity.Inventory;
import entity.InventoryCustomerItemQuantity;
import entity.InventoryLiquorQuantity;
import entity.Reservation;
import entity.Supplier;

public class inventory_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	InventoryDao inventoryDao = null;
    
    public inventory_servlet() {
    	inventoryDao = new InventoryDaoImpl();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String date = request.getParameter("date");
		String room_id = request.getParameter("room_id");
		String your_name = request.getParameter("your_name");
		String adult_count = request.getParameter("adult_count");
		String item_quantity = request.getParameter("item_quantity");
		String liquor_quantity = request.getParameter("liquor_quantity");
		String choose_extra_items = request.getParameter("choose_extra_items");
		String choose_liquor_items = request.getParameter("choose_liquor_items");
		
		int adult_count_int = Integer.parseInt(adult_count);
		int liquor_quantity_int = Integer.parseInt(liquor_quantity);
		int item_quantity_int = Integer.parseInt(item_quantity);
		
		Inventory i = new Inventory();
		
		i.setDate(date);
		i.setRoom_id(room_id);
		i.setYour_name(your_name);
		i.setAdults(adult_count);
		i.setItem_quantity(item_quantity);
		i.setLiquor_quantity(liquor_quantity);
		i.setExtra_item(choose_extra_items);
		i.setLiquor(choose_liquor_items);
		
		inventoryDao.UpdateItemQuantity(choose_extra_items, item_quantity_int);
		inventoryDao.UpdateLiquorQuantity(choose_liquor_items, liquor_quantity_int);	
		inventoryDao.save(i);
		
		int id =inventoryDao.GetMaxId();
		i.setId(id);
		
		request.setAttribute("obj",i);
		request.getRequestDispatcher("/inventory_edit_delete.jsp").forward(request, response);
			
	}
	
}
