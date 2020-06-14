<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Amanwella</title>
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
<body style = "background-image: url('img/hero21.jpg');
			background-attachment: fixed;
			background-position: center; 
 			background-repeat: no-repeat; 
  			background-size: cover;">

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="./events.jsp" class="navbar-brand"> Event Manager </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="./index.jsp" class = "nav-link">Home</a></li>
				
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<br>
	
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<form action="event_sev2" method="post">
				<caption>
					<h2>
						<c:if test="${event != null}">
            			Edit User
            		</c:if>
						<c:if test="${event == null}">
            			Add New Event
            			<br>
            			<br>
            			
            		</c:if>
					</h2>
				</caption>

				<input type="hidden" name="event_id" value="<c:out value='${event.id}' />" />
				
				<c:if test="${event.id != null}">
            		<fieldset class="form-group">
						<label>Event Category</label> <input type="text"
							value="<c:out value='${event.name}' />" class="form-control"
							name="name" required="required">
					</fieldset>
            	</c:if>
            	<c:if test="${event.id == null}">
            		<fieldset class="form-group">
						<label>Event Category</label> <input type="text"
							value="<c:out value='${action}' />" class="form-control"
							name="name" required="required">
					</fieldset>
            	</c:if>
			
				<fieldset class="form-group">
					<label>Email</label> <input type="email"
						value="<c:out value='${event.email}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Date</label> <input type="date"
						value="<c:out value='${event.date}' />" class="form-control"
						name="date">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Check In Time</label> <input type="time"
						value="<c:out value='${event.check_in}' />" class="form-control"
						name="checkintime" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Check Out Time</label> <input type="time"
						value="<c:out value='${event.check_out}' />" class="form-control"
						name="checkouttime" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Customer Name</label> <input type="text"
						value="<c:out value='${event.address}' />" class="form-control"
						name="address" required="required">
				</fieldset>
				<br>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	
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
