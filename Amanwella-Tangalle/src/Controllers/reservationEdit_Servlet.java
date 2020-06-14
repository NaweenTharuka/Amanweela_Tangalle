package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

import dao.ReservationDao;
import dao.ReservationDaoImpl;
import entity.Reservation;

/**
 * Servlet implementation class reservationEdit_Servlet
 */
public class reservationEdit_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	ReservationDao reservationDao = null;
	
    public reservationEdit_Servlet() {
        //super();
        // TODO Auto-generated constructor stub
    	reservationDao = new ReservationDaoImpl();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String btnType = request.getParameter("btn");
		
		if(btnType == null) {
			btnType = "Delete";
		}
		
		String reservation_type = request.getParameter("reservation_type");
		String reservation_id = request.getParameter("reservation_id");
		String check_in = request.getParameter("checkin_date");
		String check_out = request.getParameter("checkout_date");
		String adults = request.getParameter("adults");
		String children = request.getParameter("children");
		String room_count = request.getParameter("room_count");
		String status = request.getParameter("status");
		
		Reservation r = new Reservation();
		
		if(check_in != null && check_out != null) 
		{
			SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-mm-dd");
			try { 
				java.util.Date date1 = myFormat.parse(check_in); 
				java.util.Date date2 = myFormat.parse(check_out); 
				long diff = date2.getTime() - date1.getTime(); 
				int num_of_days = (int) TimeUnit.DAYS.convert(diff,TimeUnit.MILLISECONDS);
				r.setNum_of_days(num_of_days);
			  
			  } catch (ParseException e) { 
				  e.printStackTrace(); 
			} catch (java.text.ParseException e) { 
				e.printStackTrace(); 
			}			
		}
		
		int room_count_int = Integer.parseInt(room_count);
		int children_int = Integer.parseInt(children);
		int adults_int = Integer.parseInt(adults);
		int id=Integer.parseInt(reservation_id);
		
		if(4*room_count_int < children_int+adults_int) {
			response.sendRedirect("reservation.jsp?status=false");
		}
		else 
		{
			r.setRes_id(id);
			r.setReservation_type(reservation_type);
			r.setCheck_in(check_in);
			r.setCheck_out(check_out);
			
			r.setAdults(adults);
			r.setChildren(children);
			r.setRoom_count(room_count);
			r.setStatus(status);
			
			PrintWriter out=response.getWriter();
			if(btnType.equals("Delete"))
			{ 
				
				  reservationDao.Delete(id); out.println("<script type=\"text/javascript\">");
				  out.println("location='index.jsp'");
				  out.println("</script>");
				 
				 
			}
			else 
			{
				if(check_in != null && check_out != null) 
				{
					reservationDao.Update(id, r);			
				}
				
				request.setAttribute("obj",reservationDao.GetReservationDetails(id));
				request.getRequestDispatcher("/resValidation.jsp").forward(request, response);
				
			}
			
		}
	}
}