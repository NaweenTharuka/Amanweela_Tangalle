<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Event Manager</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<link rel="stylesheet" href="event/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="event/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="event/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="event/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="event/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="event/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="event/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="event/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="event/css/style.css" type="text/css">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: black">
			<div>
				<a> Event Manager </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="./index.jsp" class = "nav-link">Home</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">Event List</h3>
			<hr>
			<div class="container text-left">

				<a href="./events.jsp" class="btn btn-success">Add New Event</a>
				<a href="Eventreport.jsp" class="btn btn-success">Event Report</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Event Type</th>
						<th>Email</th>
						<th>Date</th>
						<th>Check In Time</th>
						<th>Check Out Time</th>
						<th>Customer Name</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="list" items="${list}">

						<tr>
							<td><c:out value="${list.id}" /></td>
							<td><c:out value="${list.name}" /></td>
							<td><c:out value="${list.email}" /></td>
							<td><c:out value="${list.date}" /></td>
							<td><c:out value="${list.check_in}" /></td>
							<td><c:out value="${list.check_out}" /></td>
							<td><c:out value="${list.address}" /></td>
							<td><a href="event_edit_delete?action=delete&id=${list.id}">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
	
	<footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="footer-item">
                        <div class="footer-logo">
                            <a href="#"><img src="img/download_edited3.jpg" alt=""></a>
                        </div>
                       <p>Location: <br>This Aman Resorts property is located right on a tranquil crescent beach in the middle of a coconut grove In Sri Lanka..<br>
																</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="footer-item">
                        <h5>Newsletter</h5>
                        <div class="newslatter-form">
                            <input type="text" placeholder="Your Email Here">
                            <button type="submit">Subscribe</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="footer-item">
                        <h5>Contact Info</h5>
                        <ul>
                            <li><img src="img/placeholder.png" alt="">Boddhi Mawatha,<br />Wella Wathuara,<br />Godellawela, <br />Tangalle,<br />Sri Lanka</li>
                            <li><img src="img/phone.png" alt="">+94 (47) 224 1333  amanwella@aman.com</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                
				<div class="row pt-5">
                    <div class="col-lg-12 ">
                        <div class="small text-white text-center"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This Web is made by Amanwella Luxery Resort, Tangalle.<!--<i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>-->
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
                    </div>
                </div>

            </div>
        </div>
    </footer>
    
    <script src="event/js/jquery-3.3.1.min.js"></script>
    <script src="event/js/bootstrap.min.js"></script>
    <script src="event/js/jquery.magnific-popup.min.js"></script>
    <script src="event/js/jquery-ui.min.js"></script>
    <script src="event/js/jquery.nice-select.min.js"></script>
    <script src="event/js/jquery.slicknav.js"></script>
    <script src="event/js/owl.carousel.min.js"></script>
    <script src="event/js/main.js"></script>
	
</body>
</html>
