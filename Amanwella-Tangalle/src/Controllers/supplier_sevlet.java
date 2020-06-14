package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.Boolean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.SupplierDao;
import dao.SupplierDaoImpl;
import entity.Supplier;

public class supplier_sevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	SupplierDao supplierDao = null;
	
	public supplier_sevlet() {
		supplierDao = new SupplierDaoImpl();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action == null) {
			action="LIST";
		}
		switch(action) {
			case "LIST":
				listSuppliers(request, response, "");
				break;
			
			case "EDIT":
				getSingleSupplier(request, response);
				break;
			
			case "DELETE":
				deleteSingleSupplier(request, response);
				break;
				
			case "PROFILE":
				supplierProfile(request, response);
				break;
				
			default:
				listSuppliers(request, response, "");
				break;
		}
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String first_name = request.getParameter("fname");
		String last_name = request.getParameter("lname");
		String email = request.getParameter("email");                                                    
		String mobile = request.getParameter("mobile");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String profile_picture = request.getParameter("profile_picture");
		
		if(mobile.length()<10 || mobile.length()>12) {
			response.sendRedirect("supplier.jsp?status=false");

		} else {
			Supplier s = new Supplier();
			
			s.setFirst_name(first_name);
			s.setLast_name(last_name);
			s.setEmail(email);
			s.setMobile(mobile);
			s.setDob(dob);
			s.setAddress(address);
			s.setGender(gender);
			s.setProfile_picture(profile_picture);
			
			PrintWriter out = response.getWriter();
			
			if(id.isEmpty() || id == null) {
				
				if(supplierDao.save(s)) {
					out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js'></script>");
					out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
					out.println("<script>");
					out.println("$(document).ready(function(){");
					out.println("swal ('WELCOME', 'SUCCESSFULL');");
					out.println("});");
					out.println("</script>");
				}
			} else {
				s.setId(Integer.parseInt(id));
				supplierDao.update(s);
			}
			listSuppliers(request, response, "save");
			
		}
	}
	public void listSuppliers(HttpServletRequest request, HttpServletResponse response, String alertType) throws ServletException, IOException {
		List<Supplier> list = supplierDao.get();
		request.setAttribute("list", list);
		if(!alertType.isEmpty()) {
			request.setAttribute(alertType, "1");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/supplier-list.jsp");
		dispatcher.forward(request, response);
	}
	private void getSingleSupplier(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Supplier supplier = supplierDao.get(Integer.parseInt(id));
		request.setAttribute("supplier", supplier);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/supplier.jsp");
		dispatcher.forward(request, response);
	}
	private void deleteSingleSupplier(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");	
		supplierDao.delete(Integer.parseInt(id));
		listSuppliers(request, response, "delete");
	}

	private void supplierProfile(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String id = request.getParameter("id");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		Supplier supplier = supplierDao.get(Integer.parseInt(id));
		request.setAttribute("supplier", supplier);
		request.setAttribute("first_name", first_name);
		request.setAttribute("last_name", last_name);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/supplier_profile.jsp");
		dispatcher.forward(request, response);
	}
}
