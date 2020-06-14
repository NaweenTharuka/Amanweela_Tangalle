package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReservationDao;
import dao.ReservationDaoImpl;
import dao.RoompaymentDao;
import dao.RoompaymentDaoImpl;
import entity.ReservationPayment;
import entity.Roompayment;

public class room_payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RoompaymentDao roompaymentDao = null;
	ReservationDao reservationDao = null;
    
    public room_payment() {
    	roompaymentDao = new RoompaymentDaoImpl();
    	reservationDao = new ReservationDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			listRoompayment(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String res_id = request.getParameter("res_id");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String Nic_no = request.getParameter("Nic_no");
		String email = request.getParameter("email");
		String phone_number = request.getParameter("phone_number");
		String payment = request.getParameter("payment");
		String room_rent = request.getParameter("room_rent");
		String cardno = request.getParameter("cardno");
		String card_type = request.getParameter("card_type");
		String exdate = request.getParameter("exdate");
		String cvv = request.getParameter("cvv");
		String checkin_date = request.getParameter("checkin_date");
		String checkout_date = request.getParameter("checkout_date");
		
			int res_id_int = Integer.parseInt(res_id);
			Roompayment rp = new Roompayment();
			rp.setRes_id(res_id_int);
			rp.setFirst_name(first_name);
			rp.setLast_name(last_name);
			rp.setCheck_in(checkin_date);
			rp.setCheck_out(checkout_date);
			rp.setNic_no(Nic_no);
			rp.setEmail(email);
			rp.setPhone_number(phone_number);
			rp.setPayment(payment);
			rp.setRoom_rent(room_rent);
			rp.setCardno(cardno);
			rp.setCard_type(card_type);
			rp.setExdate(exdate);
			rp.setCvv(cvv);
					
			PrintWriter out=response.getWriter();
			if(roompaymentDao.save(rp))
			{
				
				out.println("<script type=\"text/javascript\">");
				out.print("alert('Reservation Successfully Completed');");
				out.println("location='index.jsp'");
				out.println("</script>");
			}else {
				PrintWriter writer = response.getWriter();
				writer.println(checkin_date);
				writer.println(checkout_date);
			}
				
	}
	public void listRoompayment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Roompayment> list = roompaymentDao.get();
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/roompaymentdetails.jsp");
		dispatcher.forward(request, response);
		  
		/* PrintWriter writer = response.getWriter(); writer.println(list.size()); */
	}
	
}
