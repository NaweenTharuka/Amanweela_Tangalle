package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class event_servlet
 */
@WebServlet("/event_servlet")
public class event_servlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	EventDao eventDao = null;
       
    public event_servlet() {
    	eventDao = new EventDaoImpl();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		switch(action) {
			case "day_outing":
				request.setAttribute("action", "Day Outing");
				break;
			
			case "meetings":
				request.setAttribute("action", "Meetings");
				break;
			
			case "group_events":
				request.setAttribute("action", "Group Events");
				break;
			case "list":
				PrintWriter writer = response.getWriter();
				writer.println("message");
				break;
			default:
				break;	
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("./user-form.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String date = request.getParameter("date");                                                    
		String checkintime = request.getParameter("checkintime");
		String checkouttime = request.getParameter("checkouttime");
		String address = request.getParameter("address");
		
		Event s = new Event();
		
		s.setName(name);
		s.setEmail(email);
		s.setDate(date);
		s.setCheck_in(checkintime);
		s.setCheck_out(checkouttime);
		s.setAddress(address);
		
		if(id.isEmpty() || id == null) {
			eventDao.save(s);
		} else {
			s.setId(Integer.parseInt(id));
			eventDao.update(s);
		}
		listSuppliers(request, response);
	}
	public void listSuppliers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Event> list = eventDao.get();
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("./user-list.jsp");
		dispatcher.forward(request, response);
	}
	
}
