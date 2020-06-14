package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.InventoryDao;
import dao.InventoryDaoImpl;
import entity.Inventory;
import entity.InventoryCustomerItemQuantity;
import entity.InventoryLiquorQuantity;
import entity.InventoryQuantity;

import entity.Supplier;

public class inventory_count extends HttpServlet {
	private static final long serialVersionUID = 1L;
	InventoryDao inventoryDao = null;
     
    public inventory_count() {
    	inventoryDao = new InventoryDaoImpl();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listQuantity(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	public void listQuantity(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<InventoryQuantity> list = inventoryDao.get_quantity();
		List<Inventory> inventory_list = inventoryDao.get_inventory();
		request.setAttribute("list", list);
		request.setAttribute("inventory_list", inventory_list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/inventory_count.jsp");
		dispatcher.forward(request, response);
	}
}
