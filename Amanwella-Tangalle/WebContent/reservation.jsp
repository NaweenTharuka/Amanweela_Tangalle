
<!doctype html>
<html lang="en">
  <head>
    <title>Reservation</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400|Playfair+Display:400,700" rel="stylesheet">

    <link rel="stylesheet" href="Reservation/css/room/bootstrap.css">
    <link rel="stylesheet" href="Reservation/css/room/animate.css">
    <link rel="stylesheet" href="Reservation/css/room/owl.carousel.min.css">
    <link rel="stylesheet" href="Reservation/css/room/aos.css">
    <link rel="stylesheet" href="Reservation/css/room/bootstrap-datepicker.css">
    <link rel="stylesheet" href="Reservation/css/room/jquery.timepicker.css">
    <link rel="stylesheet" href="Reservation/css/room/magnific-popup.css">
    
    <link rel="stylesheet" href="Reservation/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="Reservation/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

  
    <!-- Theme Style -->
    <link rel="stylesheet" href="Reservation/css/room/style.css">
    
    
    <link rel="stylesheet" href="Reservation/css/room/main.css">
	<link rel="stylesheet" href="Reservation/css/room/travel.css">
	<!--  <link rel="stylesheet" href="css/room.css"> -->
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
    
    <jsp:include page="header.jsp"></jsp:include>
    

    <section class="site-hero inner-page overlay" style="background-image: url(img/IMG_9993.JPG)" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center text-center">
          <div class="col-md-10 text-center" data-aos="fade-up">
            <h1 class="heading"> Rooms Reservation</h1>
          </div>
        </div>
      </div>

      <a class="mouse smoothscroll" href="#next">
        <div class="mouse-icon">
          <span class="mouse-wheel"></span>
        </div>
      </a>
    </section>
    <!-- END section -->

    <section class="section contact-section" id="next">
      <div class="container">
        <div class="row">
          <div class="col-md-7" data-aos="fade-up" data-aos-delay="100">
            
            <form action="reservationEdit_Servlet" id="formReservation" method="post" class="bg-white p-md-5 p-4 mb-5 border">
            <input type="hidden" name="status" value="${obj.getStatus()}">
            <input type="hidden" name="number_of_days" value="${obj.getNum_of_days()}">
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
                    <input type="number" name="adults" max="10" class="form-control" min="0" value="${obj.getAdults()}" required="required" readonly="readonly">
                   
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
          
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="button" value="Edit" onclick="Edit()" class="btn btn-primary text-white py-3 px-5">
                </div>
              </div>
              
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="button" value="Delete" id="btnDelete" name="btn" class="btn btn-primary text-white py-3 px-5">
                </div>
              </div>
              
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="submit" value="Reserve Now" name="btn" class="btn btn-primary text-white py-3 px-5">
                </div>
              </div>
            </form>

          </div>
          
        </div>
      </div>
    </section>
    
     <div class="row">
          <div class="col-md-12">
            <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200">
              <div class="slider-item">
                <img src="img/Room/s1.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <div class="slider-item">
                <img src="img/Room/s2.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <div class="slider-item">
                <img src="img/Room/s3.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <div class="slider-item">
                <img src="img/Room/s4.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <div class="slider-item">
                <img src="img/Room/s5.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <div class="slider-item">
                <img src="img/Room/s6.jpg" alt="Image placeholder" class="img-fluid">
              </div>
              <div class="slider-item">
                <img src="img/Room/s7.JPG" alt="Image placeholder" class="img-fluid">
              </div>
            </div>
            <!-- END slider -->
          </div>
        </div>
        
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>

    <script src="Reservation/js/main.js"></script>
    
    <script type="text/javascript">
    	
    	$(document).ready(function() {
    		$("#btnDelete").click(function(){
    			console.log('sdsds');
    			$.confirm({
    			    title: 'Confirm!',
    			    content: 'Are you sure want to Delete ?',
    			    buttons: {
    			        confirm: function () {
    			        	var input = $("<input>")
    			               .attr("type", "hidden")
    			               .attr("name", "btn").val("Delete");
    			        	$('#formReservation').append(input);
    			        	$("#formReservation").submit();
    			        },
    			        cancel: function () {
    			            return;
    			        }
    			    }
    			});
    	    }); 
    		
    		function deleteSuccess(){
    			$.alert({
    			    title: 'Success!',
    			    content: 'Simple alert!',
    			});
    		}
    	});
    </script>
  </body>
</html>