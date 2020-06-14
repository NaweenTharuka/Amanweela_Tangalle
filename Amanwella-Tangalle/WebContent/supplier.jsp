<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="css/admin.css" />
    <link rel="stylesheet" href="css/supplier.css" />
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://kit.fontawesome.com/6bcee8e3da.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
    <link rel="stylesheet" href="really-simple-jquery-dialog.css">
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="really-simple-jquery-dialog.js"></script>
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/supplier.css" />
	
	<style>
		.form_lable {
			background-color: #B0E0E6;"
		}
	</style>

</head>
<body style="background-image: url('images/IMG_9995.JPG');
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
	<jsp:include page="admin_nav.jsp"></jsp:include>
	
	
		<div class="add_supplier_form">
			
			<div class="row">
			    		<div class="container">
						<form method="post" action="supplier_sevlet">
						<div class="alert-danger" >
							<%	
								String status = request.getParameter("status");
			
								if(status !=null) {
									if(status.equals("false")) { %>
									<div style="padding-top: 15px;
									     	    padding-bottom: 15px;
									     	    margin-bottom: 15px;
									     	    padding-left: 15px;">
									<% 
										out.println("Please Check Your Mobile Number Agaian"); %>
									 </div>
									 <% 
									}
								}
									 %>
									
							
									
						</div>
						    	<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
							    	<label for="exampleInputEmail1" class="form_lable">First Name</label>
							    	<input type="text" class="form-control" name="fname" aria-describedby="emailHelp" placeholder="Enter First Name" value="${supplier.first_name}" required>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
							    	<label for="exampleInputEmail1" class="form_lable">Last Name</label>
							    		<input type="text" class="form-control" name="lname" aria-describedby="emailHelp" placeholder="Enter Last Name" value="${supplier.last_name}" required>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
							    		<label for="exampleInputEmail1" class="form_lable">E-Mail</label>
							    		<input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Enter email" value="${supplier.email}" required>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
							    	<label for="exampleInputPassword1" class="form_lable">Mobile</label>
							    	<input type="text" class="form-control" name="mobile" placeholder="077XXXXXXX / +9477XXXXXXX" value="${supplier.mobile}" required>
									</div>
								</div>
							</div>
							<div class="form-group">
							    <label for="exampleInputPassword1" class="form_lable">Date of Birth</label>
							    <input type="date" class="form-control" name="dob" placeholder="Enter Date of Birth" value="${supplier.dob}" required>
							</div>
							<div class="form-group">
							    <label for="exampleFormControlTextarea1" class="form_lable">Address</label>
							    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="address" required>${supplier.address}</textarea>
							 </div>
							 <div class="row">
									<div class="col-sm-3">
										<label class="form_lable" >
								        Gender
									    </label>
									    <div class="gender_male">
									    	<div class="form-check">
										      <label class="form-check-label" for="radio1" class="form_lable">
										       	<input type="radio" class="form-check-input" id="radio1" name="gender" value="Male" checked class="form_lable">Male
										      </label>
										    </div>
									    </div>
									    <div class="form-check">
									      <label class="form-check-label" for="radio2" class="form_lable">
									        <input type="radio" class="form-check-input" id="radio2" name="gender" value="Female" class="form_lable">Female
									      </label>
									    </div>  
									</div>
									<div class="col-sm-3">
										<div class="form-group">
								    		<label for="exampleFormControlFile1" class="form_lable">Profile Picture</label>
								    		<input type="file" class="form-control-file" id="exampleFormControlFile1" name="profile_picture">
										</div>
									</div>
							</div>
							<input type="hidden" value="${supplier.id}" name="id">
							<div class="add_suplier_btn">
								<button type="submit" class="btn btn-primary" id="supplier_button" >ADD SUPPLIER</button>
							</div>
						</form>
			      		</div>
		 		</div>
		 </div>
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
    <script src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js'></script>
    <script src="./js/admin.js"></script>
    
</body>
</html>