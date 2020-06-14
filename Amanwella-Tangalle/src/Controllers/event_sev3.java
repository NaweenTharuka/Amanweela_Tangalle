package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EventDao;
import dao.EventDaoImpl;
import entity.Event;

@WebServlet("/event_sev3")
public class event_sev3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
EventDao eventDao = null;
    
    public event_sev3() {
    	eventDao = new EventDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String btnType = request.getParameter("btn");
		String event_id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String date = request.getParameter("date");                                                    
		String checkintime = request.getParameter("check_in");
		String checkouttime = request.getParameter("check_out");
		String address = request.getParameter("address");
		
		Event s2 = new Event();
		
		int id=Integer.parseInt(event_id);
		
		s2.setId(id);
		s2.setName(name);
		s2.setEmail(email);
		s2.setDate(date);
		s2.setCheck_in(checkintime);
		s2.setCheck_out(checkouttime);
		s2.setAddress(address);
		
		/*
		 * PrintWriter writer = response.getWriter(); writer.println("message");
		 * writer.println(event_id); writer.println(name); writer.println(email);
		 * writer.println(date); writer.println(checkintime);
		 * writer.println(checkouttime); writer.println(address);
		 */
		
		
		
		PrintWriter out=response.getWriter();
		if(btnType.equals("Delete"))
		{
			
			  eventDao.delete(id);
			  
			  out.println("<script type=\"text/javascript\">");
			  out.print("alert('Reservation successfully deleted.');");
			  out.println("location='index.jsp'"); out.println("</script>");
			 
		}
		else 
		{

			if(email != null && name != null) 
			{
				
				eventDao.Update(id, s2);
				  
				out.println("<script type=\"text/javascript\">");
				out.print("alert('Reservation successfully updated.');");
				out.println("location='index.jsp'"); out.println("</script>");
				  
			}
			
				out.println("<script type=\"text/javascript\">");
				out.print("alert('Reservation successfully added.');");
				out.println("location='index.jsp'"); 
				out.println("</script>");
			
			  
		}
	}
}