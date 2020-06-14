<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/rep1.css">
<title>Insert title here</title>
				<div class="logo">
				  <img src="img/download_edited3.jpg" alt="">
                </div><br>
<h1>Amanwella Luxery Resort (pvt)ltd,Tangalle - Sri Lanka</h1><br>
<h1>Customer Invoice</h1><br><br>
			<!--  <address >
				<p>Amanwella Luxery Resort</p>
				<p>Boddhi Mawatha,<br>Wella Wathuara,<br>Godellawela,<br>Tangalle,<br>Srilanka.</p>
				<p>+94 (47) 224 1333</p>
				<p>amanwella@aman.com</p>
			</address>-->
			
</head>
<body>

<article>
			<h1></h1>
			<address >
				<p><br></p>
				<p>Customer Name  : - ${room_payment.first_name} ${room_payment.last_name}<br></p>
			</address>
			<table class="meta">
				<tr>
					<th><span >Invoice No : </span></th>
					<td><span >${room_payment.res_id}</span></td>
				</tr>
				<tr>
					<th><span >Check in Date : </span></th>
					<td><span >${room_payment.check_in} </span></td>
				</tr>
				<tr>
					<th><span >Check out Date : </span></th>
					<td><span >${room_payment.check_out} </span></td>
				</tr>
				
			</table>
			<table >
					<tr> 
						<td>Phone Number : ${room_payment.phone_number} </td>
						
						<td>Email Address : ${room_payment.email} </td>
					</tr>
					<tr> 
						<td>Nic Number : ${room_payment.nic_no} </td>
						<td>Card Number : ${room_payment.cardno} </td>
					</tr>
				</table>
				<br>
				<br>
			<table class="inventory">
				<thead>
					<tr>
						<th><span >Description</span></th>
						<th><span >Quentity</span></th>
						
					</tr>
				</thead>
				<tbody>
				
					<tr>
						<td><span >No: of Adults </span></td>
						<td><span >${reservation.adults} </span></td>
						
					</tr>
					<tr>
						<td> <span >No: of Children </span></td>
						<td><span >${reservation.children}</span></td>
						
					</tr>
					<tr>
						<td><span >No: of Rooms</span></td>
						<td><span >${reservation.room_count}</span></td>
						
					</tr>
				</tbody>
			</table>
			
			<p><br></p>
				<p>Total Amount :- ${room_payment.room_rent}/=<br></p>
			
			
		</article>
		<!-- <div class="footer-item">
                        
                        <ul>
                            <li><img src="img/placeholder.png" alt="">Boddhi Mawatha,<br />Wella Wathuara,<br />Godellawela, <br />Tangalle,<br />Sri Lanka<br/></li><br />
                            <li><img src="img/phone.png" alt="">+94 (47) 224 1333 </br>  amanwella@aman.com</li>
                        </ul>
                    </div> -->






</body>
</html>