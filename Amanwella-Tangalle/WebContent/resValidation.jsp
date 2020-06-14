<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Reservation Validation</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400|Playfair+Display:400,700" rel="stylesheet">

    <link rel="stylesheet" href="Reservation/css/room/bootstrap.css">
    <link rel="stylesheet" href="Reservation/css/room/animate.css">
    <link rel="stylesheet" href="Reservation/css/room/owl.carousel.min.css">
    <link rel="stylesheet" href="Reservation/css/room/aos.css">
    <link rel="stylesheet" href="Reservation/css/room/bootstrap-datepicker.css">
    <link rel="stylesheet" href="Reservation/css/room/jquery.timepicker.css">
    <link rel="stylesheet" href="css/room/magnific-popup.css">
    
    
    <link rel="stylesheet" href="Reservation/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="Reservation/fonts/fontawesome/css/font-awesome.min.css">
     <link rel="stylesheet" href="Reservation/fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="Reservation/vender/nouislider/nouislider.min.css">

  
    <!-- Theme Style -->
    <link rel="stylesheet" href="Reservation/css/room/style.css">
    <link rel="stylesheet" href="Reservation/css/room/veriregcss.css">
    
    
    <link rel="stylesheet" href="Reservation/css/room/main.css">
	<link rel="stylesheet" href="Reservation/css/room/travel.css">
	<link rel="stylesheet" href="Reservation/css/room/room.css"> 
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
	<script src="https://kit.fontawesome.com/6bcee8e3da.js"></script>
   
   <script type="text/javascript">
   
   	function Edit(){
   		$('.datePick').removeAttr('disabled');
   		$('input[type=number]').removeAttr('readonly');
   	}
   </script>
</head>
<body>

 <section class="site-hero inner-page overlay" style="background-image: url(img/Room/q3.jpg)" data-stellar-background-ratio="0.5">
      
        <div class="row site-hero-inner justify-content-center align-items-center text-center">
 		<h1 class="heading"> Customer Verification</h1>
        </div>
      <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
          <span class="mouse-wheel"></span>
        </div>
      </a>
    </section>
 <section class="section contact-section" id="next">
 
      <div class="container">
        <div class="row">
        
        		<div class="signup-img">
                    <img src="img/Room/1.jpg" alt=""><br>
                    <div class="signup-img-content">
                    </div>
                </div>
                
          <div class="col-md-7" data-aos="fade-up" data-aos-delay="100">
            
            <form action="room_payment" method="post" class="bg-white p-md-5 p-4 mb-5 border">
              <h1>Reservation Details......</h1><br>
         	<input type="hidden" name="reservation_type" value="LUXERY">
         	<input type="hidden" name="reservation_id" value="${obj.getRes_id()}">
         	
            
				<div class="row">
                 <div class="col-md-6 form-group">
                  <label class="text-black font-weight-bold" for="checkout_date">Check-In:</label>
                  <input id="datefield1" type='date' class="form-control datePick" name="checkin_date" min='2000-01-01' max='2102-07-01' value="${obj.getCheck_in() }" onclick="dateGet()" disabled="disabled"></input>
                </div>
                <div class="col-md-6 form-group">
                  <label class="text-black font-weight-bold" for="checkout_date">Check-Out :</label>
                  <input id="datefield2" type='date' class="form-control datePick" name="checkout_date" min='2000-01-01' value="${obj.getCheck_out() }" max='2102-07-01' onclick="dateGet()" disabled="disabled"></input>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 form-group">
                  <label for="adults" class="font-weight-bold text-black">Adults :</label>
                  <div class="field-icon-wrap">
                    <input type="number" name="adults" max="5" class="form-control" min="0" value="${obj.getAdults()}" required="required" readonly="readonly">
                   
                  </div>
                </div>
                <div class="col-md-6 form-group">
                  <label for="children" class="font-weight-bold text-black">Children :</label>
                  <div class="field-icon-wrap">
                    <input type="number" name="children" max="10" min="0" class="form-control" value="${obj.getChildren()}" required="required" readonly="readonly">
                   
                  </div>
                </div>
				<div class="col-md-6 form-group">
                  <label for="Room Count" class="font-weight-bold text-black">Room Count :</label>
                  <div class="field-icon-wrap">
                    <input type="number" name="room_count" max="10" min="0" class="form-control" value="${obj.getRoom_count()}" required="required" readonly="readonly">
                 
                  </div>
                </div>
              </div>

            </form>

          </div>
          
        </div>
      </div>
    
    <div class="main">

        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="img/Room/q2.jpg" alt=""><br>
                    <img src="img/Room/q4.jpg" alt="">
                    <div class="signup-img-content">
                    </div>
                </div>
                <div class="signup-form">
                <form  action="room_payment" method="post"class="register-form" id="register-form" >
                    <!--  <form method="POST" class="register-form" id="register-form">-->
                    
                    <%	
					String status = request.getParameter("status");

					if(status !=null) {
						if(status.equals("false")) {
							out.println("Maximum number of participants limit exceeded");
						}
					}
					
					String statusValidate=request.getParameter("statusValidate");
					if(statusValidate != null){
						
						if(statusValidate.equals("false")){
							out.println("Fill All Required Data to Processed.");
						}
					}
					
					
				%>
				<input type="hidden" name="res_id" id="res_id" value="${obj.res_id}" required="required"/>
				<input type="hidden" name="number_of_days" value="${obj.getNum_of_days()}">
				<input type="hidden" name="checkin_date" value="${obj.getCheck_in()}">
         		<input type="hidden" name="checkout_date" value="${obj.getCheck_out()}">
                        <div class="form-row">
                         <h1>Verify Your Details......</h1><br><br>
                         
                            <div class="form-group">
                                <div class="form-input">
                                    <label for="first_name" class="required">First name</label>
                                    <input type="text" name="first_name" id="first_name" required="required"/>
                                </div>
                                <div class="form-input">
                                    <label for="last_name" class="required">Last name</label>
                                    <input type="text" name="last_name" id="last_name" required="required"/>
                                </div>
                                <div class="form-input">
                                    <label for="Nic_no" class="required">NIC</label>
                                    <input type="text" name="Nic_no" id="Nic_no" required="required"/>
                                </div>
                                <div class="form-input">
                                    <label for="email" class="required">Email</label>
                                    <input type="email" name="email" id="email" required="required"/>
                                </div>
                                <div class="form-input">
                                    <label for="phone_number" class="required">Phone number</label>
                                    <input type="number" name="phone_number" id="phone_number" required="required"/>
                                </div>
                            </div>
                            <div class="form-group">
                               
                                <div class="form-radio">
                                    <div class="label-flex">
                                        <label for="payment">Payment </label>
                                        
                                    </div>
                                    <div class="form-radio-group">            
                                        <div class="form-radio-item">
                                            <input type="radio" name="payment" id="card" checked>
                                            <label for="card">Card</label>
                                            <span class="check"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-input">
                                    <label for="cardno">Rooms Rent</label>
                                    <input type="text" name="room_rent" id="room_rent" value= "Lkr. ${obj.getRoom_count()*obj.getNum_of_days()*40000}" required="required" readonly="readonly"/>
                                </div>
                                <div class="form-input">
                                    <label for="cardno">Card Number</label>
                                    <input type="number" name="cardno" id="cardno" required="required"/>
                                </div>
                                <div class="form-input">
                                    <label for="card_type">Name On Card</label>
                                    <input type="text" name="card_type" id="card_type" required="required"/>
                                </div>
                                <div class="form-input">
                                    <label for="exdate">Expiry Date</label>
                                    <input type="text" name="exdate" id="exdate" required="required"/>
                                </div>
                                 <div class="form-input">
                                    <label for="cvv">CVV</label>
                                    <input type="number" name="cvv" id="cvv" required="required"/>
                                </div>
                            </div>
                        </div>
                      
                        <div class="form-submit">
                            <input type="submit" value="Submit" class="submit" id="submit" name="Confirm" />
                            <!--  <input type="submit" value="Reset" class="submit" id="reset" name="reset" />-->
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
	</section>
	</body>
    
    <script src="Reservation/js/jquery-3.3.1.min.js"></script>
    <script src="Reservation/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="Reservation/js/popper.min.js"></script>
    <script src="Reservation/js/bootstrap.min.js"></script>
    <script src="Reservation/js/owl.carousel.min.js"></script>
    <script src="Reservation/js/jquery.stellar.min.js"></script>
    <script src="Reservation/js/jquery.magnific-popup.min.js"></script>
    <script src="Reservation/js/aos.js"></script>
    
    <script src="Reservation/js/bootstrap-datepicker.js"></script> 
    <script src="Reservation/js/jquery.timepicker.min.js"></script> 
    
    <!-- section2 -->
    <script src="Reservation/vender/jquery/jquery.min.js"></script>
    <script src="Reservation/vender/nouislider/nouislider.min.js"></script>
    <script src="Reservation/vender/wnumb/wNumb.js"></script>
    <script src="Reservation/vender/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="Reservation/vender/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="Reservation/js/main.js"></script>

    <script src="Reservation/js/main.js"></script>
</body>
</html>