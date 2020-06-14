<%@page import="Beans.*"%>
<%@page import="dao.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Amanwella</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="Travel/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="Travel/css/animate.css">
    
    <link rel="stylesheet" href="Travel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="Travel/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="Travel/css/magnific-popup.css">

    <link rel="stylesheet" href="Travel/css/aos.css">

    <link rel="stylesheet" href="Travel/css/ionicons.min.css">

    <link rel="stylesheet" href="Travel/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="Travel/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="Travel/css/flaticon.css">
    <link rel="stylesheet" href="Travel/css/icomoon.css">
    <link rel="stylesheet" href="Travel/css/style.css">
    
	
	
	<!-- Header.jsp link -->
	
	
	<title>Hotel Page</title>
  </head>
  <body>

   <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.jsp">A <span>M A N W E L L A</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.jsp" class="nav-link"><h6>Home</h6></a></li>
	          <li class="nav-item"><a href="rooms.html" class="nav-link"><h6>Gallery</h6></a></li>
	          <li class="nav-item"><a href="user-reservation.jsp" class="nav-link"><h6>Accommodation</h6></a></li>
	          <li class="nav-item"><a href="about.html" class="nav-link"><h6>Events</h6></a></li>
	          <li class="nav-item"><a href="travel.jsp" class="nav-link"><h6>Tours</h6></a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link"><h6>Contact-Us</h6></a></li>
	          <%
	          UserBean sessionUserBean=(UserBean) session.getAttribute("currentSessionUser");
				//String sessionRole=sessionUserBean.getRole();
				TransManageDao sessionDao=new TransManageDao();	
					 if(sessionUserBean==null){
							
						
					%>
	          <li class="nav-item row" >
	          		<a href="login.jsp" class="nav-link">
	          			<h6>login</h6>
	          		</a> 
	          		<span style="color: #fff;margin-top:15px;">
							|
					</span> 
					<a href="reg.jsp" class="nav-link">
						<h6>signup</h6>
					</a>
			  </li>
			
			  <% }
						else if(sessionUserBean!=null && sessionUserBean.getRole().equals("user")){
							int uid_for_propic=sessionUserBean.getUid();
					%>
					<li class="nav-item"><a href="UserHandler?action=logout" class="nav-link"><h6>Logout</h6></a></li>
			<%
					} else if (sessionUserBean != null && sessionUserBean.getRole().equals("admin")) {

						int uid_for_propic = sessionUserBean.getUid();
				%>	
					<li class="nav-item">
							<%
								if (sessionUserBean.getAdmin_role_type().equals("travel")) {
							%> <a href="admin-travel.jsp" class="nav-link">ADMIN</a> <%
							 	} else if (sessionUserBean.getAdmin_role_type().equals("pay")) {
							 %> <a href="admin-payment.jsp" class="nav-link">ADMIN</a> <%
							 	} else if (sessionUserBean.getAdmin_role_type().equals("prop")) {
							 %> <a href="admin-property.jsp" class="nav-link">ADMIN</a> <%
							 	} else if (sessionUserBean.getAdmin_role_type().equals("cont")) {
							 %> <a href="admin-contactus.jsp" class="nav-link">ADMIN</a> <%
							 	} else if (sessionUserBean.getAdmin_role_type().equals("emp")) {
							 %> <a href="admin-employee.jsp" class="nav-link">ADMIN</a> <%
							 	} else if (sessionUserBean.getAdmin_role_type().equals("laun")) {
							 %> <a href="admin-laundry.jsp" class="nav-link">ADMIN</a> <%
							 	} else if (sessionUserBean.getAdmin_role_type().equals("reservation")) {
							 %> <a href="admin-reservation.jsp" class="nav-link">ADMIN</a> <%
							 	}
							 %>
						</li>
						<li class="nav-item"><a href="UserHandler?action=logout" class="nav-link"><h6>Logout</h6></a></li>
			<% } %>
	        </ul>
	      </div>
	    </div>
	  </nav>
	  	
	  	
    <!-- END nav -->
		<div class="hero">
	    <section class="home-slider owl-carousel">
	      <div class="slider-item" style="background-image:url(images/IMG_9812.JPG);">
	      	<div class="overlay"></div>
	        <div class="container">
	          <div class="row no-gutters slider-text align-items-center justify-content-end">
	          <div class="col-md-6 ftco-animate">
	          	<div class="text">
	          		<h2>More than a hotel... an experience</h2>
		            <h1 class="mb-3">Hotel for the whole family, all year round.</h1>
	            </div>
	          </div>
	        </div>
	        </div>
	      </div>

	      <div class="slider-item" style="background-image:url(images/IMG_9968.JPG);">
	      	<div class="overlay"></div>
	        <div class="container">
	          <div class="row no-gutters slider-text align-items-center justify-content-end">
	          <div class="col-md-6 ftco-animate">
	          	<div class="text">
	          		<h2>Amanwella &amp; Resort</h2>
		            <h1 class="mb-3">It feels like staying in your own home.</h1>
	            </div>
	          </div>
	        </div>
	        </div>
	      </div>
	    </section>
	  </div>

    


		<section class="ftco-section">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">Welcome to Harbor Lights Hotel</span>
            <h2 class="mb-4">You'll Never Want To Leave</h2>
          </div>
        </div>  
        <div class="row d-flex">
          <div class="col-md pr-md-1 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services py-4 d-block text-center">
              <div class="d-flex justify-content-center">
              	<div class="icon d-flex align-items-center justify-content-center">
              		<span class="flaticon-reception-bell"></span>
              	</div>
              </div>
              <div class="media-body">
                <h3 class="heading mb-3">Friendly Service</h3>
              </div>
            </div>      
          </div>
          <div class="col-md px-md-1 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services active py-4 d-block text-center">
              <div class="d-flex justify-content-center">
              	<div class="icon d-flex align-items-center justify-content-center">
              		<span class="flaticon-serving-dish"></span>
              	</div>
              </div>
              <div class="media-body">
                <h3 class="heading mb-3">Get Breakfast</h3>
              </div>
            </div>    
          </div>
          <div class="col-md px-md-1 d-flex align-sel Searchf-stretch ftco-animate">
            <div class="media block-6 services py-4 d-block text-center">
              <div class="d-flex justify-content-center">
              	<div class="icon d-flex align-items-center justify-content-center">
              		<span class="flaticon-car"></span>
              	</div>
              </div>
              <div class="media-body">
                <h3 class="heading mb-3">Transfer Services</h3>
              </div>
            </div>      
          </div>
          <div class="col-md px-md-1 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services py-4 d-block text-center">
              <div class="d-flex justify-content-center">
              	<div class="icon d-flex align-items-center justify-content-center">
              		<span class="flaticon-spa"></span>
              	</div>
              </div>
              <div class="media-body">
                <h3 class="heading mb-3">Suits &amp; SPA</h3>
              </div>
            </div>      
          </div>
          <div class="col-md pl-md-1 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services py-4 d-block text-center">
              <div class="d-flex justify-content-center">
              	<div class="icon d-flex align-items-center justify-content-center">
              		<span class="ion-ios-bed"></span>
              	</div>
              </div>
              <div class="media-body">
                <h3 class="heading mb-3">Cozy Rooms</h3>
              </div>
            </div>      
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-wrap-about ftco-no-pt ftco-no-pb">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-7 order-md-last d-flex">
						<div class="img img-1 mr-md-2 ftco-animate" style="background-image: url(Travel/images/about-1.jpg);"></div>
						<div class="img img-2 ml-md-2 ftco-animate" style="background-image: url(Travel/images/IMG_9890.JPG);"></div>
					</div>
					<div class="col-md-5 wrap-about pb-md-3 ftco-animate pr-md-5 pb-md-5 pt-md-4">
	          <div class="heading-section mb-4 my-5 my-md-0">
	          	<span class="subheading">About Amanwella Luxury Resort</span>
	            <h2 class="mb-4">A Amanwella Luxury Resort the Most Recommended Hotel All Over the Sri Lanka.</h2>
	          </div>
	          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
	          
					</div>
				</div>
			</div>
		</section>


    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">AMAN</span>
            <h2>Amanwella, Tangalle</h2>
          </div>
        </div>
        <div class="row d-flex">
          <div class="col-md-4 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20 rounded" style="background-image: url('Travel/images/IMG_9980.JPG');">
              </a>
              <div class="text mt-3 text-center">
              	<div class="meta mb-2">
                  <div><a href="#">Wellness</a></div>
                  <div><a href="#"> </a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> </a></div>
                </div>
                <h3 class="heading"><a href="#">Massages and body treatments, using all natural products, are available in the privacy of your Suite</a></h3>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20 rounded" style="background-image: url('Travel/images/IMG_9995 (1).JPG');">
              </a>
              <div class="text mt-3 text-center">
              	<div class="meta mb-2">
                  <div><a href="#">Dining</a></div>
                  <div><a href="#"></a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> </a></div>
                </div>
                <h3 class="heading"><a href="#">The Restaurant and Beach Club specialise in locally-caught seafood as well as vibrant Sri Lankan curry dishes</a></h3>
              </div>
            </div>
          </div>
          <div class="col-md-4 d-flex ftco-animate">
            <div class="blog-entry align-self-stretch">
              <a href="blog-single.html" class="block-20 rounded" style="background-image: url('Travel/images/IMG_9999.JPG');">
              </a>
              <div class="text mt-3 text-center">
              	<div class="meta mb-2">
                  <div><a href="#">Events</a></div>
                  <div><a href="#"></a></div>
                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> </a></div>
                </div>
                <h3 class="heading"><a href="#">Amanwella’s secluded jungle setting creates an intimate, celebratory atmosphere suited to occasions large and small</a></h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    

    <footer class="ftco-footer ftco-section img" style="background-image: url(images/bg_4.jpg);">
    	<div class="overlay"></div>
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">AMANWELLA</h2><br></br>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Useful Links</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Blog</a></li>
                <li><a href="#" class="py-2 d-block">Rooms</a></li>
                <li><a href="#" class="py-2 d-block">Amenities</a></li>
                <li><a href="#" class="py-2 d-block">Gift Card</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Privacy</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Career</a></li>
                <li><a href="#" class="py-2 d-block">About Us</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
                <li><a href="#" class="py-2 d-block">Services</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">Boddhi Mawatha, Wella Wathuara, Godellawela, Tangalle, Sri Lanka</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+94 47 224 1333</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">amanwella@aman.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

           
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="Travel/js/jquery.min.js"></script>
  <script src="Travel/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="Travel/js/popper.min.js"></script>
  <script src="Travel/js/bootstrap.min.js"></script>
  <script src="Travel/js/jquery.easing.1.3.js"></script>
  <script src="Travel/js/jquery.waypoints.min.js"></script>
  <script src="Travel/js/jquery.stellar.min.js"></script>
  <script src="Travel/js/owl.carousel.min.js"></script>
  <script src="Travel/js/jquery.magnific-popup.min.js"></script>
  <script src="Travel/js/aos.js"></script>
  <script src="Travel/js/jquery.animateNumber.min.js"></script>
  <script src="Travel/js/bootstrap-datepicker.js"></script>
  <script src="Travel/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="Travel/js/google-map.js"></script>
  <script src="Travel/js/main.js"></script>
    
  </body>
</html>