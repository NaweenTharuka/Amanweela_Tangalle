<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="inventory/css/inventory_count.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

<!-- 						<table class="table table-bordered table-dark" id="supplier_table"> -->
<!-- 							<thead> -->
<!-- 								<tr> -->
<!-- 								   <th scope="col">Customer Item</th> -->
<!-- 								   <th scope="col">Count</th> -->
<!-- 								</tr> -->
<!-- 							</thead> -->
<!-- 							<tbody> -->
<%-- 								<c:forEach items="${list_item}" var="list_item"> --%>
<!-- 								<tr> -->
<%-- 									<td><c:out value="${list_item.item}"/></td> --%>
<%-- 									<td><c:out value="${list_item.count}"/></td> --%>
<!-- 								</tr> -->
<%-- 							</c:forEach> --%>
<!-- 							</tbody> -->
<!-- 						</table> -->
<!-- 						<table class="table table-bordered table-dark" id="supplier_table"> -->
<!-- 							<thead> -->
<!-- 								<tr> -->
<!-- 								   <th scope="col">Customer Item</th> -->
<!-- 								   <th scope="col">Count</th> -->
<!-- 								</tr> -->
<!-- 							</thead> -->
<!-- 							<tbody> -->
<%-- 								<c:forEach items="${list_liquor}" var="list_liquor"> --%>
<!-- 								<tr> -->
<%-- 									<td><c:out value="${list_liquor.item}"/></td> --%>
<%-- 									<td><c:out value="${list_liquor.quantity}"/></td> --%>
<!-- 								</tr> -->
<%-- 							</c:forEach> --%>
<!-- 							</tbody> -->
<!-- 						</table> -->
		<div style="padding-left:100px;
					padding-right:100px;
					padding-top:50px;
				    padding-bottom:50px;">
			<button type="button" onclick="Availability()" class="btn btn-primary">Availability</button>
			<button type="button" onclick="Orders()" class="btn btn-warning">Orders</button>
			<a href="inventoryReport.jsp"><button type="button"  class="btn btn-warning">Print</button></a>
			
		</div>
		<div class="container">
			<div class="row">
					<div id="sec1">
					<table id="customers">
					    <thead>
							<tr>
								<th scope="col">Date</th>
								<th scope="col">Room ID</th>
								<th scope="col">Name</th>
								<th scope="col">Liquor</th>
								<th scope="col">Liquor Quantity</th>
								<th scope="col">Extra Item</th>
								<th scope="col">Extra Item Quantity</th>
							</tr>
						</thead>
						<c:forEach items="${inventory_list}" var="inventory_list">
						<tr> 
								<td><c:out value="${inventory_list.date}"/></td>
								<td><c:out value="${inventory_list.room_id}"/></td>
								<td><c:out value="${inventory_list.your_name}"/></td>
								<td><c:out value="${inventory_list.liquor}"/></td>
								<td><c:out value="${inventory_list.liquor_quantity}"/></td>
								<td><c:out value="${inventory_list.extra_item}"/></td>
								<td><c:out value="${inventory_list.item_quantity}"/></td>
					 		</tr> 
						</c:forEach>
						</table>
				</div>
			</div>
		</div>
		<div class="container">
		<div class="row">
				<div id="sec2">
				<table id="customers">
			    <thead>
					<tr>
						<th scope="col">Customer Item</th>
						<th scope="col">Count</th>
						<th scope="col">Liquor</th>
						<th scope="col">Count</th>
					</tr>
				</thead>
				<c:forEach items="${list}" var="list">
				<tr> 
						<td><c:out value="${list.item}"/></td>
						<td><c:out value="${list.item_count}"/></td>
						<td><c:out value="${list.liquor}"/></td>
						<td><c:out value="${list.liquor_count}"/></td>
			 		</tr> 
				</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<script>
		var x = document.getElementById("sec1");
		x.style.display = "none"
	</script>
	<script>
		function Orders() {
			  var x = document.getElementById("sec1");
			  var y = document.getElementById("sec2");
			  if (x.style.display === "none") {
			    x.style.display = "block";
			    y.style.display = "none"
			  } 
			}
	</script>
	<script>
		function Availability() {
			  var x = document.getElementById("sec2");
			  var y = document.getElementById("sec1");
			  if (x.style.display === "none") {
			    x.style.display = "block";
			    y.style.display = "none"
			  } 
			}
	</script>
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
</body>
</html>	
			
			
			
				