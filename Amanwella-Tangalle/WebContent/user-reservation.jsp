<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400|Playfair+Display:400,700" rel="stylesheet">
<link rel="stylesheet" href="Reservation/css/room/main.css">
<link rel="stylesheet" href="Reservation/css/room/travel.css">
<link rel="stylesheet" href="Reservation/css/room/room.css">
<link rel="stylesheet" href="Reservation/css/room/bootstrap.css">
<link rel="stylesheet" href="Reservation/css/room/animate.css">
<link rel="stylesheet" href="Reservation/css/room/owl.carousel.min.css">
<link rel="stylesheet" href="Reservation/css/room/aos.css">
<link rel="stylesheet" href="Reservation/css/room/bootstrap-datepicker.css">
<link rel="stylesheet" href="Reservation/css/room/jquery.timepicker.css">
<link rel="stylesheet" href="Reservation/css/magnific-popup.css">
<link rel="stylesheet" href="Reservation/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="Reservation/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="Reservation/css/room/style.css">
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

</head>
<body onresize="resizeNavi()">

<jsp:include page="header.jsp"></jsp:include>
<section class="site-hero overlay" style="background-image: url(img/hero_3.jpg)" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
          <div class="col-md-10 text-center" data-aos="fade-up">
            <h1 class="heading">Enjoy A Luxury <br> Experience</h1><br><br><br><br>
            <h5 class="heading">Check Availability</h5>
          </div>
        </div>
      </div>

      <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
          <span class="mouse-wheel"></span>
        </div>
      </a>
    </section>
<div class="main">
	<div class="roomCard">
		<div class="roomImg">
			 <img src="img/Room/R1.jpg">
		</div>
		<div class="roomForm">
			
			<form  action="res_sevlet" method="post" ><!-- onsubmit="return confirmInsert()" -->
				<input type="hidden" name="reservation_type" value="LUXERY">
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
					
				<div class="selectDiv">
					 <div class="col-md-6 form-group">
                  <label class="text-black font-weight-bold" for="checkout_date">Check-In:</label>
                  <input id="datefield1" type='date' class="form-control datePick" name="check_in" min='2000-01-01' max='2102-07-01' onclick="dateGet()"></input>
                </div>
					<div class="col-md-6 form-group">
                  <label class="text-black font-weight-bold" for="checkout_date">Check-Out :</label>
                  <input id="datefield2" type='date' class="form-control datePick" name="check_out" min='2000-01-01' max='2102-07-01' onclick="dateGet()"></input>
                </div>
				</div>
				<div class="selectDiv">
					<div class="selectCard">
						<label for="Room Count" class="font-weight-bold text-black">Adults :</label>
						<div class="field-icon-wrap">
                    <!-- <div class="icon"><span class="ion-ios-arrow-down"></span></div> -->
                    
                    <input type="number" name="adults" max="10" class="form-control" min="0" required="required">
                  
                  </div>
					</div>
					<div class="selectCard">
						<label for="adults" class="font-weight-bold text-black">Children :</label>
						<div class="field-icon-wrap">
                    <!--  <div class="icon"><span class="ion-ios-arrow-down"></span></div>-->
                    <input type="number" name="children" max="10" min="0" class="form-control" required="required">
                   
                  </div>
					</div>
					<div class="selectCard">
						<label for="Room Count" class="font-weight-bold text-black">Room Count :</label>
						<div class="field-icon-wrap">
                    <!--  <div class="icon"><span class="ion-ios-arrow-down"></span></div>-->
                    <input type="number" name="room_count" max="10" min="0" class="form-control" required="required">
                  
                  </div>
					</div>
				</div>
				<button type="submit" name="submit">Book now</button>		
			</form>
		</div>
	</div>
</div>
<section class="section bg-light">

      <div class="container">
       
        <div class="site-block-half d-flex bg-white" data-aos="fade-up" data-aos-delay="100">
          <a href="#" class="image d-block bg-image" style="background-image: url('img/Room/IMG_9890.JPG');"></a>
          <div class="text">
            <span class="d-block"><span class="display-4 text-primary">Lkr.40000</span> / per day  </span>
            <h2>Ocean Hill Luxery Room - King Bed</h2>
            <p class="lead">Breakfast, Lunch, Dinner <br>
            				Maximum 4 members for each room <br>
							Sea and treetop views<br>
							Private courtyard with plunge pool (6m x 4m)<br>
							Terrace with double sun lounger<br>
							Outdoor banquette for lounging and dining<br>
							Outdoor dining table with chairs<br>
							King-size 2 bed<br>
							Writing desk, daybed, armchair with kithul wood table<br>
							Bathroom with free-standing bathtub, twin vanities, dressing area<br>
							Separate shower/toilet<br>
							WiFi, sound system, safe<br>
							Personal bar<br>
						 </p>
                 
          </div>
        </div>
           
      </div>
    </section>

    <section class="section slider-section">
      <div class="container">
        <div class="row justify-content-center text-center mb-5">
          <div class="col-md-8">
            <h2 class="heading" data-aos="fade-up">See The Gallery</h2>
            <p class="lead" data-aos="fade-up" data-aos-delay="100">Best for relaxed beach retreats, and cultural and wildlife encounters<br>
																	Three hours by car from Colombo airport, or 75 minutes from Mattala Rajapaksa International Airport<br>
																	Access to National Parks including Udawalawe and Bundala offering sights of elephants, crocodiles and birdlife<br><br><br><br>
																	Spa, yoga platform by the beach, library and boutique<br>
																	Restaurant serving Asian and Mediterranean cuisine, as well as Lounge Bar, Pool Terrace and Beach Club with grill<br>
																	Watch for blue whales, sperm whales and spinner dolphins between December and March<br> </p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
              <div class="slider-item">
                <img src="img/Room/a1.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <div class="slider-item">
                <img src="img/Room/a2.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <div class="slider-item">
                <img src="img/Room/a3.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <div class="slider-item">
                <img src="img/Room/a4.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <div class="slider-item">
                <img src="img/Room/a5.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <div class="slider-item">
                <img src="img/Room/a6.jpg" alt="Image placeholder" class="img-fluid">
              </div>
               <div class="slider-item">
                <img src="img/Room/a7.jpg" alt="Image placeholder" class="img-fluid">
              </div>
             
            </div>
            <!-- END slider -->
          </div>

        </div>
      </div>
    </section>
    <!-- END section -->
       
    <section class="section blog-post-entry bg-light">
      <div class="container">
        <div class="row justify-content-center text-center mb-5">
          <div class="col-md-8">
            <h2 class="heading" data-aos="fade-up">At the Resort</h2>
            <p class="lead" data-aos="fade-up"></p>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">

            <div class="media media-custom d-block mb-4">
              <a href="#" class="mb-4 d-block"><img src="img/Room/well.jpg" alt="Image placeholder" class="img-fluid"></a>
              <div class="media-body">
                <span class="meta-post">Wellness</span>
                <h2 class="mt-0 mb-3"><a href="#">Massages and body treatments, using all natural products, are available in the privacy of your Suite.</a></h2>
              </div>
            </div>

          </div>
          <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="200">
            <div class="media media-custom d-block mb-4">
              <a href="#" class="mb-4 d-block"><img src="img/Room/din.jpg" alt="Image placeholder" class="img-fluid"></a>
              <div class="media-body">
                <span class="meta-post">Dining</span>
                <h2 class="mt-0 mb-3"><a href="#">The Restaurant and Beach Club specialise in locally-caught seafood as well as vibrant Sri Lankan curry dishes.</a></h2>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="300">
            <div class="media media-custom d-block mb-4">
              <a href="#" class="mb-4 d-block"><img src="img/Room/ev.jpg" alt="Image placeholder" class="img-fluid"></a>
              <div class="media-body">
                <span class="meta-post">Events</span>
                <h2 class="mt-0 mb-3"><a href="#">Amanwella's secluded jungle setting create an intimate, celebratory atmosphere suited to occasions large and small.</a></h2>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Footer Section Begin -->
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
                            <li><img src="img/phone.png" alt="">+94 (47) 224 1333 </br>  amanwella@aman.com</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        
                        <ul>
                        <li ><a href="./index.jsp">Home</a></li>
                        <li><a href="./about-us.html">Gallery</a></li>
                        <li class="active"><a href="./user-reservation.jsp">Accommodation</a></li>
                        <li><a href="#">Event And Activities</a></li>
                        <li><a href="./blog.html">Tours</a></li>
                        <li><a href="./contact.html">Contact-Us</a></li>
                        </ul>
                    </div>
                </div>
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
    
    <script src="Reservation/js/headfoot/js/jquery-3.3.1.min.js"></script>
    <script src="Reservation/js/headfoot/js/bootstrap.min.js"></script>
    <script src="Reservation/js/headfoot/js/jquery.magnific-popup.min.js"></script>
    <script src="Reservation/js/headfoot/js/jquery-ui.min.js"></script>
    <script src="Reservation/js/headfoot/js/jquery.nice-select.min.js"></script>
    <script src="Reservation/js/headfoot/js/jquery.slicknav.js"></script>
    <script src="Reservation/js/headfoot/js/owl.carousel.min.js"></script>
    <script src="Reservation/js/headfoot/js/main.js"></script>
    <!-- Footer Section End -->

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

    <script src="Reservation/js/main.js"></script>
</body>
</html>