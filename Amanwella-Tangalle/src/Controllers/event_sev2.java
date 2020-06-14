package Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EventDao;
import dao.EventDaoImpl;
import entity.Event;

@WebServlet("/event_sev2")
public class event_sev2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EventDao eventDao = null;
	
    public event_sev2() {
    	eventDao = new EventDaoImpl();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listEvents(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		eventDao.save(s);

		int id=eventDao.GetMaxId();
		s.setId(id);
			
		request.setAttribute("event",s);
		request.getRequestDispatcher("./edit_delete_event.jsp").forward(request,response);
	}
	
	public void listEvents(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.util.List<Event> list = eventDao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("./user-list.jsp");
		dispatcher.forward(request, response);
	}

}
