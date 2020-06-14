package Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContactusDao;
import dao.ContactusDaoImpl;
import entity.Contactus;

@WebServlet("/contact_us")
public class contact_us extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ContactusDao contactusDao = null;
  
    public contact_us() {
    	contactusDao = new ContactusDaoImpl();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listContactus(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String country = request.getParameter("country");
		String message = request.getParameter("message");
				
		Contactus c = new Contactus();
			
		c.setTitle(title);
		c.setName(name);
		c.setEmail(email);
		c.setPhone(phone);
		c.setCountry(country);
		c.setMessage(message);
		
	
					
		contactusDao.save(c);
		int id=contactusDao.GetMaxId();
		c.setId(id);
			
		
		  request.setAttribute("obj",c);
		  request.getRequestDispatcher("/ContactusEdit.jsp").forward(request,
		  response);
		 
	}
	public void listContactus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.util.List<Contactus> list = contactusDao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ContactusList.jsp");
		dispatcher.forward(request, response);
	}
}
