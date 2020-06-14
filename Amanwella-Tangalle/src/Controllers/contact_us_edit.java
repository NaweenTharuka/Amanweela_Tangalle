package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContactusDao;
import dao.ContactusDaoImpl;
import entity.Contactus;


@WebServlet("/contact_us_edit")
public class contact_us_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ContactusDao contactusDao = null;
    
    public contact_us_edit() {
    	contactusDao = new ContactusDaoImpl();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String btnType = request.getParameter("btn");
		
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String country = request.getParameter("country");
		String message = request.getParameter("message");
		String cid = request.getParameter("cid");
		
		Contactus c = new Contactus();
		
		int id=Integer.parseInt(cid);

		
			c.setId(id);
			c.setTitle(title);
			c.setName(name);
			c.setEmail(email);
			c.setPhone(phone);
			c.setCountry(country);
			c.setMessage(message);
			
			PrintWriter out=response.getWriter();
			if(btnType.equals("Delete"))
			{
				contactusDao.Delete(id);
				
				out.println("<script type=\"text/javascript\">");
				out.print("alert('Delete Success.');");
				out.println("location='contact_home.jsp'");
				out.println("</script>");
			}
			else 
			{
				if(email != null && message != null) 
				{
					contactusDao.Update(id, c);
					
				}
			
			  request.setAttribute("obj",contactusDao.GetContactusDetails(id));
			  request.getRequestDispatcher("/contactUs_success.jsp").forward(request,
			  response);
			 
				
			}
	}

}
