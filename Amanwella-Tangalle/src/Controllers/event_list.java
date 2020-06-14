package Controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EventDao;
import dao.EventDaoImpl;
import entity.Event;

/**
 * Servlet implementation class event_list
 */
@WebServlet("/event_list")
public class event_list extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	EventDao eventDao = null;
        
    public event_list() {
    	eventDao = new EventDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listSuppliers(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	public void listSuppliers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Event> list = eventDao.get();
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("./user-list.jsp");
		dispatcher.forward(request, response);
	}
	
}
