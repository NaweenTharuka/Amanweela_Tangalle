package Controllers;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.concurrent.TimeUnit;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

import dao.ReservationDao;
import dao.ReservationDaoImpl;
import entity.Reservation;
import sun.util.calendar.BaseCalendar.Date;

public class res_sevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	ReservationDao reservationDao = null;
	
	public res_sevlet() {
		reservationDao = new ReservationDaoImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listReservation(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reservation_type = request.getParameter("reservation_type");
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");
		String adults = request.getParameter("adults");
		String children = request.getParameter("children");
		String room_count = request.getParameter("room_count");
		
		int room_count_int = Integer.parseInt(room_count);
		int children_int = Integer.parseInt(children);
		int adults_int = Integer.parseInt(adults);
		
		Reservation r = new Reservation();
		SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-mm-dd");
		try { 
			java.util.Date date1 = myFormat.parse(check_in); 
			java.util.Date date2 = myFormat.parse(check_out); 
			long diff = date2.getTime() - date1.getTime(); 
			int num_of_days = (int) TimeUnit.DAYS.convert(diff,TimeUnit.MILLISECONDS);
			r.setNum_of_days(num_of_days);
		  
		  } catch (java.text.ParseException e) { 
			e.printStackTrace(); 
		}
		
		if(4*room_count_int < children_int+adults_int) {
			response.sendRedirect("user-reservation.jsp?status=false");
		}
		else if(check_in == null || check_out == null || adults_int <= 0 || room_count_int <= 0) {
			response.sendRedirect("user-reservation.jsp?statusValidate=false");
		}
		else {
			
			r.setReservation_type(reservation_type);
			r.setCheck_in(check_in);
			r.setCheck_out(check_out);
			r.setAdults(adults);
			r.setChildren(children);
			r.setRoom_count(room_count);
			r.setStatus("Not Confirm");
					
			reservationDao.save(r);
			int id=reservationDao.GetMaxId();
			r.setRes_id(id);
			
			request.setAttribute("obj",r);
			request.getRequestDispatcher("/reservation.jsp").forward(request, response);
			 
			/*request.setAttribute("check_in", check_in);
			request.setAttribute("check_out", check_out);
			request.setAttribute("adults", adults);
			request.setAttribute("children", children);
			request.setAttribute("room_count", room_count);*/
			//dispatcher.forward(request, response);
		}
				
	}
	public void listReservation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		java.util.List<Reservation> list = reservationDao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/roomreservationdetails.jsp");
		dispatcher.forward(request, response);
	}
	
}
