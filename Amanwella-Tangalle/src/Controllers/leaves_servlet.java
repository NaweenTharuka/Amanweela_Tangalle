package Controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LeavesDao;
import dao.LeavesDaoImpl;
import entity.Leaves;

public class leaves_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LeavesDao leaves_dao = null;

    public leaves_servlet() {
    	leaves_dao = new LeavesDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listLeaves(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String staffid = request.getParameter("memid");
		String sdate = request.getParameter("sdate");                                                    
		String edate = request.getParameter("edate");
		String nleaves = request.getParameter("nleaves");
		String rleaves = request.getParameter("rleaves");
		
		
		Leaves l = new Leaves();
		
		l.setStaffid(Integer.parseInt(staffid));
		l.setSdate(sdate);
		l.setEdate(edate);
		l.setNleaves(nleaves);
		l.setRleaves(rleaves);
		
		
		leaves_dao.save(l);
		listLeaves(request, response);
	}
	public void listLeaves(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Leaves> list = leaves_dao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/leaves_list.jsp");
		dispatcher.forward(request, response);
	

	}

}
