package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StaffDao;
import dao.StaffDaoImpl;
import entity.Staff;

public class delete_staff_sevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StaffDao staff_dao = null;
    public delete_staff_sevlet() {
    	staff_dao = new StaffDaoImpl();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");	
		staff_dao.delete(Integer.parseInt(id));
		listStaff(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	private void deleteSingleStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");	
		staff_dao.delete(Integer.parseInt(id));
		listStaff(request, response);
	}
	public void listStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Staff> list = staff_dao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/staff.jsp");
		dispatcher.forward(request, response);
	}
}
