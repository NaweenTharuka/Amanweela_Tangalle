package Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SalaryDao;
import dao.SalaryDaoImpl;
import entity.Salary;



public class salary_view extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SalaryDao salary_dao = null;   
   
    public salary_view() {
    	salary_dao = new SalaryDaoImpl();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getSingleSalary(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	private void getSingleSalary(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String total_salary = request.getParameter("total_salary");
		Salary salary = salary_dao.get(Integer.parseInt(id));
		request.setAttribute("salary", salary);
		request.setAttribute("total_salary", total_salary);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/salary.jsp");
		dispatcher.forward(request, response);
	}

}
