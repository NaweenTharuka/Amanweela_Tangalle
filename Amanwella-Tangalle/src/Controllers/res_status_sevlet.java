package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReservationDao;
import dao.ReservationDaoImpl;
import entity.Reservation;


public class res_status_sevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ReservationDao reservationDao = null;
       
    
    public res_status_sevlet() {
    	reservationDao = new ReservationDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		Reservation reservation = reservationDao.GetReservationDetails(Integer.parseInt(id));
		request.setAttribute("reservation", reservation);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/reservation_status.jsp");
		dispatcher.forward(request, response);
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String res_id = request.getParameter("res_id");
		String res_type = request.getParameter("res_type");
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		String num_of_days = request.getParameter("num_of_days");
		String adults = request.getParameter("adults");
		String children = request.getParameter("children");
		String room_count = request.getParameter("room_count");
		String status = request.getParameter("status");
		
		Reservation r = new Reservation();
		  
		r.setRes_id(Integer.parseInt(res_id));
		r.setReservation_type(res_type);
		r.setNum_of_days(Integer.parseInt(num_of_days));
		r.setCheck_in(checkin);
		r.setCheck_out(checkout);
		r.setAdults(adults);
		r.setChildren(children);
		r.setRoom_count(room_count);
		r.setStatus(status);
		  
		reservationDao.Update(Integer.parseInt(res_id), r);
		PrintWriter out=response.getWriter();
		out.println("<script type=\"text/javascript\">");
		out.print("alert('Reservation Confirmed Successfully.');");
		out.println("location='res_sevlet'");
		out.println("</script>");
			
	}
}
