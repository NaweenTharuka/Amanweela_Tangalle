package Controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AttendanceDao;
import dao.AttendanceDaoImpl;
import entity.Attendance;


public class attendance_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	AttendanceDao attendance_dao = null;
	
    public attendance_servlet() {
    	attendance_dao = new AttendanceDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listAttendance(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String date = request.getParameter("date");
		String staffid = request.getParameter("staffid");
		String intime = request.getParameter("intime");                                                    
		String outtime = request.getParameter("outtime");
		String whours = request.getParameter("whours");
		String ehours = request.getParameter("ehours");
		
		Attendance a = new Attendance();
		
		a.setDate(date);
		a.setStaffid(Integer.parseInt(staffid));
		a.setIntime(intime);
		a.setOuttime(outtime);
		a.setWhours(whours);
		a.setEhours(ehours);
		
		attendance_dao.save(a);
		listAttendance(request, response);
		
	}

	public void listAttendance(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Attendance> list = attendance_dao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/attendance_list.jsp");
		dispatcher.forward(request, response);
	

	}
}
	
