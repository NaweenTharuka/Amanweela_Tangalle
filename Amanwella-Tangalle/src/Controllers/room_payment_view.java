package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RoompaymentDao;
import dao.RoompaymentDaoImpl;
import dao.ReservationDao;
import dao.ReservationDaoImpl;
import entity.Reservation;
import entity.Roompayment;

public class room_payment_view extends HttpServlet {
	private static final long serialVersionUID = 1L;   
	RoompaymentDao roompaymentDao = null;
	ReservationDao reservationDao = null;
    public room_payment_view() {
        super();
        roompaymentDao = new RoompaymentDaoImpl();
        reservationDao = new ReservationDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		viewRoompayment(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	public void viewRoompayment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Roompayment room_payment = roompaymentDao.GetRoompaymentDetails(Integer.parseInt(id));
		Reservation reservation = reservationDao.GetReservationDetails(Integer.parseInt(id));
		PrintWriter writer = response.getWriter();
		/* writer.println(room_payment.getFirst_name()); */
		
		  request.setAttribute("room_payment", room_payment);
		  request.setAttribute("reservation", reservation);
		  
		  RequestDispatcher dispatcher = request.getRequestDispatcher("/newfile.jsp");
		  dispatcher.forward(request, response);
		 
		  
		/* PrintWriter writer = response.getWriter(); writer.println(list.size()); */
	}
}
