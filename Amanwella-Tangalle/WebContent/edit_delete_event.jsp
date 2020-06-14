<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Amanwella</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

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

<script type="text/javascript">
   
   	function Edit(){
   		$('input[type=text]').removeAttr('disabled');
   		$('input[type=date]').removeAttr('disabled');
   		$('input[type=time]').removeAttr('disabled');
   	}
   </script>
   
   <header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a class="navbar-brand"> Event Confirmation </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="./header.jsp" class = "nav-link">Home</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>

	<div class="container">
		<div class="row">
		<div class="col-sm-2">
		</div>
		<div class="col-sm-8">
			<form action="event_sev3" method="post">
				<input type="hidden" name="id" value="${event.getId()}">
			  <div class="form-group">
			    <label for="exampleInputEmail1">Event Category</label>
			    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Name" value="${event.getName()}" disabled="disabled">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">Email</label>
			    <input name="email" type="text" class="form-control" id="exampleInputPassword1" placeholder="Email" value="${event.getEmail()}" disabled="disabled">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputEmail1">Date</label>
			    <input name="date" type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Date" value="${event.getDate()}" disabled="disabled">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">Check In Time</label>
			    <input name="check_in" type="time" class="form-control" id="exampleInputPassword1" placeholder="Check In Time" value="${event.getCheck_in()}" disabled="disabled">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputEmail1">Check Out Time</label>
			    <input name="check_out" type="time" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Check Out Time" value="${event.getCheck_out()}" disabled="disabled">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">Customer Name</label>
			    <input name="address" type="text" class="form-control" id="exampleInputPassword1" placeholder="Customer Name" value='${event.getAddress()}' disabled="disabled">
			  </div>
			  <br>
			  
			  <button type="button" onclick="Edit()" class="btn btn-primary">Edit</button>
			  <button type="submit" name="btn" value="Delete" class="btn btn-primary">Delete</button>
			  <button type="submit" name="btn" value="Reserve" class="btn btn-primary">Reserve Now</button>
			</form>
		</div>
		<div class="col-sm-2">
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


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

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