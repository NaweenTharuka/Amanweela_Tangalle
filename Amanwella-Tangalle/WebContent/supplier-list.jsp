<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<meta charset="utf-8">
<link rel="stylesheet" href="css/supplier.css" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>
<title>Insert title here</title>
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css"
      integrity="sha256-9mbkOfVho3ZPXfM7W8sV2SndrGDuh7wuyLjtsWeTI1Q="
      crossorigin="anonymous"
    />

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"
      integrity="sha256-+N4/V/SbAFiW1MPBCXnfnP9QSN3+Keu+NlB+0ev/YKQ="
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/admin.css" />
    
    <style>
		.form_lable {
			background-color: #B0E0E6;
		}
		
		
		.detail_sec {
			  display: none; /* Hidden by default */
			  position: fixed; /* Stay in place */
			  z-index: 1; /* Sit on top */
			  padding-top: 100px; /* Location of the box */
			  left: 0;
			  top: 0;
			  width: 100%; /* Full width */
			  height: 100%; /* Full height */
			  overflow: auto; /* Enable scroll if needed */
			  background-color: rgb(0,0,0); /* Fallback color */
			  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
			}
			
			/* Modal Content */
			.detail-content {
			  position: relative;
			  background-color: #fefefe;
			  margin: auto;
			  padding: 0;
			  border: 1px solid #888;
			  width: 80%;
			  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
			  -webkit-animation-name: animatetop;
			  -webkit-animation-duration: 0.4s;
			  animation-name: animatetop;
			  animation-duration: 0.4s
			}
			
			/* Add Animation */
			@-webkit-keyframes animatetop {
			  from {top:-300px; opacity:0} 
			  to {top:0; opacity:1}
			}
			
			@keyframes animatetop {
			  from {top:-300px; opacity:0}
			  to {top:0; opacity:1}
			}
			
			/* The Close Button */
			.close {
			  color: white;
			  float: right;
			  font-size: 28px;
			  font-weight: bold;
			}
			
			.close:hover,
			.close:focus {
			  color: #000;
			  text-decoration: none;
			  cursor: pointer;
			}
			
			.detail-header {
			  padding: 2px 16px;
			  background-color: #5cb85c;
			  color: white;
			}
			
			.detail-body {padding: 2px 16px;}
			
			.detail-footer {
			  padding: 2px 16px;
			  background-color: #5cb85c;
			  color: white;
			}	
	</style>
       
</head>
<body style="background-image: url('images/IMG_9812.JPG');
			background-repeat: no-repeat;
  			background-attachment: fixed;
  			height: 500px; 
  			background-position: center; 
 			background-repeat: no-repeat; 
  			background-size: cover;">
	<%
	  	String email = (String)session.getAttribute("email");
		
		if(email == null) {
			response.sendRedirect("admin_login.jsp");
		}
  	%>
  	
  	<div class="container">
  		<div class="row">
  			
  			<div class="row">
					<div class="add_new_supplier_btn">
						<button class="btn btn-primary" onclick="window.location.href='supplier.jsp'">ADD NEW SUPPLIER</button>
					</div>
					<div class="add_new_supplier_btn">
						<!-- <button class="btn btn-success" onclick="window.location.href='Jasper'">SUPPLIER INFORMATION REPORT</button> -->
						<button class="btn btn-success" onclick="window.location.href='supplierReport.jsp'">SUPPLIER REPORT</button>
					</div>
					<div class="add_new_supplier_btn">
						<!--<button class="btn btn-info" onclick="window.location.href='Jasper2'">DELIVERY INFORMATION REPORT</button> -->
						<button class="btn btn-info" onclick="window.location.href='DeliverReport.jsp'">DELIVERY REPORT</button>
					</div>
						<table  id="supplier_table" class="table">
							<thead>
								<tr>
								   <th scope="col">First Name</th>
								   <th scope="col">Last Name</th>
								   <th scope="col">E-Mail</th>
								   <th scope="col">Mobile</th>
								   <th scope="col">Birthday</th>
								   <th scope="col">Location</th>
								   <th scope="col">Gender</th>
								   <th scope="col">Gender</th>
								   <th scope="col">Gender</th>
								   <th scope="col">Gender</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="supplier">
								<tr>
									<td><c:out value="${supplier.first_name}"/></td>
									<td><c:out value="${supplier.last_name}"/></td>
									<td><c:out value="${supplier.email}"/></td>
									<td><c:out value="${supplier.mobile}"/></td>
									<td><c:out value="${supplier.dob}"/></td>
									<td><c:out value="${supplier.address}"/></td>
									<td><c:out value="${supplier.gender}"/></td>
									<td><button class="btn btn-secondary" onclick="window.location.href='${pageContext.request.contextPath}/supplier_sevlet?action=EDIT&id=${supplier.id}'">EDIT</button></td>
									<td><button class="btn btn-secondary" onclick="window.location.href='${pageContext.request.contextPath}/supplier_sevlet?action=DELETE&id=${supplier.id}'">DELETE</button></td>
									<td><button class="btn btn-secondary" onclick="window.location.href='${pageContext.request.contextPath}/delivery_sev?supplier_id=${supplier.id}&first_name=${supplier.first_name}&last_name=${supplier.last_name}'">PROFILE</button></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
				</div>
  			
  			</div>
  		</div>
  		
  		
  		<div id="detail_sec" class="detail_sec">
			Modal content
			<div class="detail-content">
			<div class="detail-header">
			   <span class="close">&times;</span>
			   <h2>Modal Header</h2>
			</div>
			<div class="">
			   <table   class="table">
							<thead>
								<tr>
								   <th scope="col">First Name</th>
								   <th scope="col">Last Name</th>
								   <th scope="col">E-Mail</th>
								   <th scope="col">Mobile</th>
								   <th scope="col">Birthday</th>
								   <th scope="col">Location</th>
								   <th scope="col">Gender</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="supplier">
								<tr>
									<td><c:out value="${supplier.first_name}"/></td>
									<td><c:out value="${supplier.last_name}"/></td>
									<td><c:out value="${supplier.email}"/></td>
									<td><c:out value="${supplier.mobile}"/></td>
									<td><c:out value="${supplier.dob}"/></td>
									<td><c:out value="${supplier.address}"/></td>
									<td><c:out value="${supplier.gender}"/></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
			</div>
			<div class="detail-footer">
			   <h3>Modal Footer</h3>
			</div>
		</div>
	</div>
  	<script>
	
	var modal = document.getElementById("detail_sec");
	var span = document.getElementsByClassName("close")[0];

	function myfunction() {
	  modal.style.display = "block";
	}

	span.onclick = function() {
	  modal.style.display = "none";
	}

	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}
	</script>
  		
  					
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js'></script>
	<script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
      integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"
      integrity="sha256-t8GepnyPmw9t+foMh3mKNvcorqNHamSKtKRxxpUEgFI="
      crossorigin="anonymous"
    ></script>
	<script type="text/javascript" src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="./js/admin.js"></script>
	<script>
	
		$(document).ready(function() {
	    	$('#supplier_table').DataTable();
		} );
	</script>
	
	<c:if test="${save == '1'}">
	<script>window.showalert = 'save';</script>
	</c:if>
	<c:if test="${delete == '1'}">
	<script>window.showalert = 'delete';</script>
	</c:if>
	<c:if test="${edit == '1'}">
	<script>window.showalert = 'delete';</script>
	</c:if>
	
	
</body>
</html>