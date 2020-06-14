package Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StaffDao;
import dao.StaffDaoImpl;
import entity.Staff;

public class edit_staff_sevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StaffDao staff_dao = null;
   
    public edit_staff_sevlet() {
    	staff_dao = new StaffDaoImpl();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		getSingleStaff(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	private void getSingleStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Staff staff = staff_dao.get(Integer.parseInt(id));
		request.setAttribute("staff", staff);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/registration.jsp");
		dispatcher.forward(request, response);
	}
	
}
