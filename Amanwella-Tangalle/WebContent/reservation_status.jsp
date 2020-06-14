<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<br>
	<div class="row">
		<div class="container">
				<!-- Material form contact -->
				<div class="card">
				
				    <h5 class="card-header info-color white-text text-center py-4">
				        <strong>Reservation Details</strong>
				    </h5>
				
				    <!--Card content-->
				    <div class="card-body px-lg-5 pt-0">
				
				        <!-- Form -->
				        <form class="text-center" style="color: #757575;" action="res_status_sevlet" method="post">
							<input type="hidden" name="date" class="form-control" value="${reservation.date}" disabled>
				            <!-- Name -->
				            
				            <div class="row">
				            	<div class="col-sm-6">
				            		<div class="md-form mt-3">
						            	<label for="materialContactFormName">Reservation ID</label>
						                <input type="text" name="res_id" class="form-control" value="${reservation.res_id}" readonly>
						            </div>
				            	</div>
				            	<div class="col-sm-6" style="margin-top:16px;">
				            		<div class="md-form">
						            	<label for="materialContactFormEmail">Reservation Type</label>
						                <input type="text" name="res_type" class="form-control" value="${reservation.reservation_type}" readonly>
						            </div>
				            	</div>
				            </div>
				            <div class="row">
				            	<div class="col-sm-6">
				            		<div class="md-form mt-3">
						            	<label for="materialContactFormName">Check In</label>
						                <input type="text" name="checkin" class="form-control" value="${reservation.check_in}" readonly>
						            </div>
				            	</div>
				            	<div class="col-sm-6" style="margin-top:16px;">
				            		<div class="md-form">
						            	<label for="materialContactFormEmail">Check Out</label>
						                <input type="text" name="checkout" class="form-control" value="${reservation.check_out}" readonly>
						            </div>
				            	</div>
				            </div>
				            <div class="row">
				            	<div class="col-sm-6">
				            		<div class="md-form mt-3">
						            	<label for="materialContactFormName">Number Of Days</label>
						                <input type="text" name="num_of_days" class="form-control" value="${reservation.num_of_days}" readonly>
						            </div>
				            	</div>
				            	<div class="col-sm-6" style="margin-top:16px;">
				            		<div class="md-form">
						            	<label for="materialContactFormEmail">Adults</label>
						                <input type="text" name="adults" class="form-control" value="${reservation.adults}" readonly>
						            </div>
				            	</div>
				            </div>
				            <div class="row">
				            	<div class="col-sm-6">
				            		<div class="md-form mt-3">
						            	<label for="materialContactFormName">Children</label>
						                <input type="text" name="children" class="form-control" value="${reservation.children}" readonly>
						            </div>
				            	</div>
				            	<div class="col-sm-6" style="margin-top:16px;">
				            		<div class="md-form">
						            	<label for="materialContactFormEmail">Room Count</label>
						                <input type="text" name="room_count" class="form-control" value="${reservation.room_count}" readonly>
						            </div>
				          
				            	</div>
				            </div>
				            

				            
							<c:if test="${reservation.status=='Confirm'}">
		            			<div class="form-group">
									    <label for="exampleFormControlSelect1">Staus</label>
									    <select class="form-control" name="status" disabled>
									      <option>Confirm</option>
									      <option>Not Confirm</option>
									    </select>
								</div>
		            		</c:if>
							
				            <c:if test="${reservation.status=='Not Confirm'}">
		            			<div class="form-group">
									    <label for="exampleFormControlSelect1">Staus</label>
									    <select class="form-control" name="status">
									      <option>Not Confirm</option>
									      <option>Confirm</option>
									    </select>
								</div>
								<button class="btn btn-outline-info btn-rounded btn-block z-depth-0 my-4 waves-effect" type="submit">Submit</button>
		            		</c:if>
				          
				        </form>
				    </div>
				</div>
		</div>
	</div>
</body>
</html>