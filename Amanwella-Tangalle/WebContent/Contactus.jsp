<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>ContactUs</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="Contactus/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="Contactus/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="Contactus/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="Contactus/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="Contactus/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="Contactus/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="Contactus/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="Contactus/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="Contactus/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="Contactus/css/util.css">
	<link rel="stylesheet" type="text/css" href="Contactus/css/main.css">
</head>

<body>
	
	<jsp:include page="header.jsp"></jsp:include>
	<div style="background-image: url('Contactus/images/bgpic.jpg');">
	
	<br/><br/><br/><br/><br/><br/>
	<div class="container-contact100">
		

		<div class="wrap-contact100">
			<div class="contact100-form-title" style="background-image: url(Contactus/images/bg-01.jpg);">
				<span class="contact100-form-title-1">
					Contact Us
				</span>

				<span class="contact100-form-title-2">
					Feel free to drop us a line below!
				</span>
			</div>

			<form class="contact100-form validate-form" action="contact_us" method="post">
			
				<div class="wrap-input100 validate-input" data-validate="Title is required">
					<span class="label-input100">Title:</span>
					<select name="title" type="text" style="width:390px">  
						<option>Mr.</option>  
						<option>Ms.</option>  
						<option>Mrs.</option>  
						<option>Dr.</option>  
						<option>Other</option>  
						</select>  
					<span class="focus-input100"></span>
				</div>
			
				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100">Full Name:</span>
					<input class="input100" type="text" name="name" placeholder="Enter full name" required="required" title="Name is required">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<span class="label-input100">Email:</span>
					<input class="input100" type="text" name="email" placeholder="Enter email addess"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Valid email is required: ex@abc.xyz" required="required">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Phone Number is required">
					<span class="label-input100">Phone:</span>
					<input class="input100" type="text" name="phone" placeholder="Enter phone number" required="required" title="Phone Number is required">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate="Country is required">
					<span class="label-input100">Country:</span>
					<input class="input100" type="text" name="country" placeholder="Enter your country" required="required" title="Country is required">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<span class="label-input100">Message:</span>
					<textarea class="input100" name="message" placeholder="Your Comment..." required="required" title="Message is required"></textarea>
					<span class="focus-input100"></span>
				</div>
				
				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" type="submit" name="submit">
						<span>
							Submit
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>
	</div>
    <jsp:include page="footer.jsp"></jsp:include>
	<script src="Contactus/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="Contactus/vendor/animsition/js/animsition.min.js"></script>
	<script src="Contactus/vendor/bootstrap/js/popper.js"></script>
	<script src="Contactus/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="Contactus/vendor/select2/select2.min.js"></script>
	<script src="Contactus/vendor/daterangepicker/moment.min.js"></script>
	<script src="Contactus/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="Contactus/vendor/countdowntime/countdowntime.js"></script>
	<script src="Contactus/js/main.js"></script>


</body>
</html>
    