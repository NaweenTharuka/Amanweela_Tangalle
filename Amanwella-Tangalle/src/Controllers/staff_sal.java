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

public class staff_sal extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StaffDao staff_dao = null;
       
    public staff_sal() {
    	staff_dao = new StaffDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listStaff(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	public void listStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Staff> list = staff_dao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/addsalary.jsp");
		dispatcher.forward(request, response);
	}
}
