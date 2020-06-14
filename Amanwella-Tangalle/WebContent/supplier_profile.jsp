<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.css"/> 
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
<body style="background-image: url('images/IMG_9858.JPG');
			background-repeat: no-repeat;
  			background-attachment: fixed;
  			height: 500px; 
  			background-position: center; 
 			background-repeat: no-repeat; 
  			background-size: cover;">
	
		<div style="padding-left:110px;
					padding-top:60px;
					margin-bottom:-60px;
					color:white;">
					
			<div class="row">
			<h3 style="
					background-color: dodgerblue;">Supplier - ${first_name} ${last_name}</h3>
			</div>
					
			
		</div>

		<div class="row" style="margin-left:90px;
								padding-top:90px;">
								
				<div class="col-sm-8">
				<form action="delivery_sev?first_name=${first_name}&&last_name=${last_name}" method="post">
					<input type="hidden" class="form-control" id="exampleInputPassword1"  name="supplier_id" value="${supplier_id}">
					<div class="row">
						<div class="col-sm-4">
							  <div class="form-group">
							    <label for="exampleInputPassword1" class="form_lable">Date</label>
							    <input type="date" class="form-control" id="exampleInputPassword1" placeholder="Date" name="date" required>
							  </div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-2">
							  <div class="form-group">
							    <label for="exampleInputPassword1" class="form_lable">ITEM 1</label>
							    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Item"  name="item_1" required>
							  </div>
						</div>
						<div class="col-sm-2">
							  <div class="form-group">
							    <label for="exampleInputPassword1" class="form_lable">COST PER 1</label>
							    <input type="number" class="form-control" id="exampleInputPassword1" placeholder="COST PER 1 "  name="cost_per_one_1" required>
							  </div>
						</div>
						<div class="col-sm-4">
							  <div class="form-group">
							    <label for="exampleInputPassword1" class="form_lable"> Quantity/ Kg s</label>
							    <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Quantity/ Kg s"  name="quantity_1" required>
							  </div>
						</div>
						
						
					</div>
					<div class="row">
						<div class="col-sm-2">
							  <div class="form-group">
							    <label for="exampleInputPassword1" class="form_lable">ITEM 2</label>
							    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Item"  name="item_2">
							  </div>
						</div>
						<div class="col-sm-2">
							  <div class="form-group">
							    <label for="exampleInputPassword1" class="form_lable">COST PER 1</label>
							    <input type="number" class="form-control" id="exampleInputPassword1" placeholder="COST PER 1 "  name="cost_per_one_2">
							  </div>
						</div>
						<div class="col-sm-4">
							  <div class="form-group">
							    <label for="exampleInputPassword1" class="form_lable"> Quantity/ Kg s</label>
							    <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Quantity/ Kg s"  name="quantity_2">
							  </div>
						</div>
						
						
					</div>
					<div class="row">
						<div class="col-sm-2">
							  <div class="form-group">
							    <label for="exampleInputPassword1" class="form_lable">ITEM 3</label>
							    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Item"  name="item_3">
							  </div>
						</div>
						<div class="col-sm-2">
							  <div class="form-group">
							    <label for="exampleInputPassword1" class="form_lable">COST PER 1</label>
							    <input type="number" class="form-control" id="exampleInputPassword1" placeholder="COST PER 1 "  name="cost_per_one_3">
							  </div>
						</div>
						<div class="col-sm-4">
							  <div class="form-group">
							    <label for="exampleInputPassword1" class="form_lable"> Quantity/ Kg s</label>
							    <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Quantity/ Kg s"  name="quantity_3">
							  </div>
						</div>
						
					</div>
				<button type="submit" class="btn btn-primary" id="delivery_button">Submit</button>
				</form>	
			</div>
			<div class="col-sm-4" style="margin-left:-150px;">
				<table  class="table table-dark" id="delivery_table">
						<thead>
							<tr>
								 <th scope="col">Date</th>
								 <th scope="col">Items</th>
								 <th scope="col">Cost Per One</th>
								 <th scope="col">Quantity</th>
								 <th scope="col">Total</th>
								 <th scope="col"></th>								 
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="list">
							<tr>
								<td><p>${list.date}</p></td>
								<td><p>${list.item1}<br> ${list.item2}<br> ${list.item3}</p></td>
								<td><p>${list.item1_costPer1}<br> ${list.item2_costPer1}<br> ${list.item3_costPer1}</p></td>
								<td><p>${list.item1_quantity}<br> ${list.item2_quantity}<br> ${list.item3_quantity}</p></td>
								<td><p>${list.total}</p></td>
								<td><button class="btn btn-primary" id="delivery_delete_button" onclick="window.location.href='${pageContext.request.contextPath}/delivery_del_sev?supplier_id=${list.supplier_id}&&id=${list.id}&&first_name=${first_name}&&last_name=${last_name}'">DELETE</button></td>
								<!-- <td><button class="btn btn-primary" onclick="myfunction()">Details</button></td> -->
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	<div id="detail_sec" class="detail_sec">
		Modal content
			<div class="detail-content">
			<div class="detail-header">
			   <span class="close">&times;</span>
			   <h2>Modal Header</h2>
			</div>
			<div class="detaill-body">
			   <table  class="table table-dark" id="delivery_table">
						<thead>
							<tr>
								 <th scope="col">Date</th>
								 <th scope="col">Items</th>
								 <th scope="col">Total</th>
								 <th scope="col"></th>
								 <th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="list">
							<tr>
								<td><p>${list.date}</p></td>
								<td><p>${list.item1}<br> ${list.item2}<br> ${list.item3}</p></td>
								<td><p>${list.total}</p></td>
								<td><button class="btn btn-primary" id="delivery_delete_button" onclick="window.location.href='${pageContext.request.contextPath}/delivery_del_sev?supplier_id=${list.supplier_id}&&id=${list.id}&&first_name=${first_name}&&last_name=${last_name}'">DELETE</button></td>
								<td><button class="btn btn-primary" onclick="myfunction()">Details</button></td>
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
	<script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script>	
	<script>
		$(document).ready(function() {
	    	$('#delivery_table').DataTable();
		} );
	</script>
	<c:if test="${delete == '1'}">
	<script>window.showalert = 'delete';</script>
	</c:if>
	<c:if test="${not empty totalalert}">
	<script>window.showalert = 'totalalert';window.totalalert = ${totalalert};</script>
	</c:if>
</body>
</html>		