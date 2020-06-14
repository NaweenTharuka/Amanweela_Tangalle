<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head> 

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Room Payment Details</title>


<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="css/nav.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});
</script>


<meta charset="ISO-8859-1">

</head>

<body style="background-color:#f2f2f2;">


<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="res_sevlet">Reservation</a>
  <a href="room_payment">Payment</a>
  <a href="#">More</a>
  <a href="#">Logout</a>
</div>

<div id="main">

  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>
</div>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "200px";
  document.getElementById("main").style.marginLeft = "200px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>

 <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Room Reservation Payment <b> Details</b></h2>
					</div>
					<!--  <div class="col-sm-6">
						<a href="registration.jsp" class="btn btn-success" > <span>Add New Member</span></a>
						<a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
					</div>-->
                </div>
            </div>
            
            
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
						<th>Reservation ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Check-in </th>
                        <th>Check-out </th>
                     	<th>Nic-Number</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                        <th>Amount</th>  
                        <th>Card Number</th>
                        <th>Card Type</th>
                        <th>Actions</th>
                        
                        
                    </tr>
                </thead>
                <tbody>  
                  	<c:forEach items="${list}" var="list">
								<tr>
									<td></td>
									<td><c:out value="${list.res_id}"/></td>
									<td><c:out value="${list.first_name}"/></td>
									<td><c:out value="${list.last_name}"/></td>
									<td><c:out value="${list.check_in}"/></td>
									<td><c:out value="${list.check_out}"/></td>
									<td><c:out value="${list.nic_no}"/></td>
									<td><c:out value="${list.email}"/></td>
									<td><c:out value="${list.phone_number}"/></td>
									<td><c:out value="${list.room_rent}"/></td>
									<td><c:out value="${list.cardno}"/></td>
									<td><c:out value="${list.card_type}"/></td>
									<td><button type="submit" name="action" onclick="window.location.href='${pageContext.request.contextPath}/room_payment_view?id=${list.res_id}'">Print</button></td>
									<%-- <td><a href="${pageContext.request.contextPath}/edit_staff_sevlet?id=${staff.id}" class="edit"data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i> </a></td> --%>
									
									
									<!--  <td><a href="${pageContext.request.contextPath}/edit_staff_sevlet?id=${staff.id}" class="edit"data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i> </a>
 									<a href="${pageContext.request.contextPath}/NewFile.jsp?id=${Reservation.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
 									<a href="${pageContext.request.contextPath}/NewFile.jsp?id=${Reservation.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Action">&#xE872;</i></a>
 									<a href="NewFile.jsp" class="nav-link"><h6>Action</h6></a></li></td>	-->							
								</tr>
					</c:forEach>
                </tbody>
            </table>
			<div class="clearfix">
                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item "><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
            
        </div>
        <div class="form-submit">
                   <a href="ReservationsReport.jsp" class="btn btn-primary" style="margin-left: 600px">Get report</a>
              	</div>
    </div>
    			
    		<!-- <a href="ReservationsReport.jsp" class="btn btn-primary" style="margin-left: 600px">Get report</a> -->
</body>
				
</html>