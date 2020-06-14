package Controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SalaryDao;
import dao.SalaryDaoImpl;
import entity.Salary;




public class salary_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SalaryDao salary_dao = null;

    public salary_servlet() {
    	salary_dao = new SalaryDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listSalary(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String memid = request.getParameter("memid");
		String month = request.getParameter("month");
		String bsalary = request.getParameter("bsalary");
		String transport = request.getParameter("transport");                                                    
		String allowance = request.getParameter("allowance");
		String ot = request.getParameter("ot");
		
		Salary s = new Salary();
		
		s.setStaffid(Integer.parseInt(memid));
		s.setMonth(month);
		s.setBsalary(bsalary);
		s.setTransport(transport);
		s.setAllowance(allowance);
		s.setOt(ot);
		
		int total_salary = Integer.parseInt(bsalary) + Integer.parseInt(transport) + Integer.parseInt(allowance) + Integer.parseInt(ot);
		s.setTotsalary(total_salary);
		salary_dao.save(s);
		request.setAttribute("total_salary", total_salary);
		listSalary(request, response);
	
	}
	public void listSalary(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Salary> list = salary_dao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/salarylist.jsp");
		dispatcher.forward(request, response);
	}
}
