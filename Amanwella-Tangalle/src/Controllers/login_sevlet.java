package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;
import dao.LoginDaoImpl;
import entity.Login;

public class login_sevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	LoginDao loginDao = null;
	
    public login_sevlet() {
    	loginDao = new LoginDaoImpl();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();	
		Login login = new Login();
		login.setUsername(request.getParameter("email"));
		login.setPassword(request.getParameter("password"));
		
		String status = loginDao.authenticate(login);
		
		if(status.equals("true")) {
			session.setAttribute("email", login.getUsername());
			response.sendRedirect("admin.jsp");
		}
		if(status.equals("false")) {
			response.sendRedirect("admin_login.jsp?status=false");
		}
		if(status.equals("error")) {
			response.sendRedirect("admin_login.jsp?status=error");
		}
	}
}