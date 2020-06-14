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
import entity.Supplier;

public class staff_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	StaffDao staff_dao = null;
	
    public staff_servlet() {
    	staff_dao = new StaffDaoImpl();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	listStaff(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String first_name = request.getParameter("fname");
		String last_name = request.getParameter("lname");
		String email = request.getParameter("email");                                                    
		String mobile = request.getParameter("mobile");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String position = request.getParameter("position");
		String tow = request.getParameter("tow");
		
		Staff s = new Staff();
		
		s.setFirst_name(first_name);
		s.setLast_name(last_name);
		s.setEmail(email);
		s.setMobile(mobile);
		s.setDob(dob);
		s.setAddress(address);
		s.setGender(gender);
		s.setPosition(position);
		s.setTow(tow);  
		
		if(id.isEmpty() || id == null) {
			staff_dao.save(s);
		} else {
			s.setId(Integer.parseInt(id));
			staff_dao.update(s);
		}
		listStaff(request, response);
	}	
	public void listStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Staff> list = staff_dao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/staff.jsp");
		dispatcher.forward(request, response);
	}
	
}
