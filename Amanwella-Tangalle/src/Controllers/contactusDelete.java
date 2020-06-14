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


@WebServlet("/contactusDelete")
public class contactusDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ContactusDao contactus_dao = null;
 
    public contactusDelete() {
    	contactus_dao = new ContactusDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");	
		contactus_dao.Delete(Integer.parseInt(id));
		listContact(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
		
	public void listContact(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.util.List<Contactus> list = contactus_dao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ContactusList.jsp");
		dispatcher.forward(request, response);
	}
}
