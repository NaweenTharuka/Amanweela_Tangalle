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

@WebServlet("/event_edit_delete")
public class event_edit_delete extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	EventDao eventDao = null;
     
    public event_edit_delete() {
    	eventDao = new EventDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		PrintWriter writer = response.getWriter();

		switch(action) {
			case "edit":
				getSingleEvent(request, response);
				break;
			
			case "delete":
				deleteSingleEvent(request, response);
				break;
				
			default:
				writer.println("message4");
				break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	private void deleteSingleEvent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");	
		eventDao.delete(Integer.parseInt(id));
		PrintWriter out=response.getWriter();
		out.println("<script type=\"text/javascript\">");
		out.print("alert('Delete Success.');");
		out.println("location='events.jsp'"); out.println("</script>");
		listSuppliers(request, response);
	}
	public void listSuppliers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Event> list = eventDao.get();
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("./user-list.jsp");
		dispatcher.forward(request, response);
	}
	private void getSingleEvent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Event event = eventDao.get(Integer.parseInt(id));
		request.setAttribute("event", event);
		RequestDispatcher dispatcher = request.getRequestDispatcher("./user-form.jsp");
		dispatcher.forward(request, response);
	}
	
}
