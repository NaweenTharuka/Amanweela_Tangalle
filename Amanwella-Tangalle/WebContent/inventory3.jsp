<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Hotel Template">
    <meta name="keywords" content="Hotel, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Taviraj:300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="inventory/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="inventory/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="inventory/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="inventory/css/linearicons.css" type="text/css">
    <link rel="stylesheet" href="inventory/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="inventory/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="inventory/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="inventory/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="inventory/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="inventory/css/style8.css" type="text/css">
	<link rel="stylesheet" href="inventory/css/style321.css" type="text/css">
	<link rel="stylesheet" href="inventory/css/style223.css" type="text/css">

</head>

<body>
	
	  <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="inner-header">
                <div class="logo">
				 <!--<span class="logoRed">A</span>manwella<br>-->
				 
	     			
                    <a href="#"><img src="img/download_edited3.jpg" alt=""></a>
                    
                </div>
               
                <nav class="main-menu mobile-menu">
                    <ul>
                        <li class="active"><a href="./index.html">Home</a></li>
                        <li><a href="./about-us.html">Gallery</a></li>
                        <li><a href="rooms.html">Accommodation</a></li>
                        <li><a href="#">Event And Activities</a>
                            <ul class="drop-menu">
                                <li><a href="about-us.html">Restaurant</a></li>
                                <li><a href="rooms.html">Weddings</a></li>
                                <li><a href="services.html">Services</a></li>
                            </ul>
                        </li>
                        <li><a href="./blog.html">Tours</a></li>
                        <li><a href="./contact.html">Contact-Us</a></li>
                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End --><br> </br>
	
	
    <!-- Room Availability Section Begin -->
    <section class="room-availability spad">
        <div class="container" style="padding-top:40px;">
            <div class="room-check">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="room-item">
                            <div class="room-pic-slider room-pic-item owl-carousel">
                                <div class="room-pic">
                                    <img src="images/room-slider/room-1.jpg" alt="">
                                </div>
                                <div class="room-pic">
                                    <img src="images/room-slider/room-2.jpg" alt="">
                                </div>
                                <div class="room-pic">
                                    <img src="images/room-slider/room-3.jpg" alt="">
                                </div>
                            </div>
                            <div class="room-text">
                                <div class="room-title">
                                    <h2>Room Features</h2>
                                    <div class="room-price">
                                        
                                    </div>
                                </div>
                                <div class="room-features">
                                    <div class="room-info">
                                        <i class="flaticon-019-television"></i>
                                        <span>Smart TV</span>
                                    </div>
                                    <div class="room-info">
                                        <i class="flaticon-029-wifi"></i>
                                        <span>High Wi-fii</span>
                                    </div>
                                    <div class="room-info">
                                        <i class="flaticon-003-air-conditioner"></i>
                                        <span>AC</span>
                                    </div>
                                    <div class="room-info">
                                        <i class="flaticon-036-parking"></i>
                                        <span>Parking</span>
                                    </div>
                                    <div class="room-info last">
                                        <i class="flaticon-007-swimming-pool"></i>
                                        <span>Pool</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="check-form">
                            <h2>Choose Extra Availability</h2>
                            <form action="<%=application.getContextPath() %>/inventory_servlet" action="post">
                                <div class="datepicker">
                                    <div class="date-select">
                                        <p>Date</p>
                                        <input type="text" class="datepicker-1" value="dd / mm / yyyy" name="date">
                                        <img src="images/calendar.png" alt="">
                                    </div>
                                   <br>
								   <br>
								   <label for="fname"></label>
									  <input type="text"   placeholder="Room Id" name="room_id"required maxlength="6">
									  
									<br><br>
									<br>
									<label for="fname"></label>
									  <input type="text"   placeholder="Your Name"  name="your_name"required maxlength="15">
								   
                                </div>
                                <div class="room-quantity">
                                    <div class="single-quantity">
                                        <p>Adults</p>
                                        <div class="pro-qty"><input type="number"  name="adult_count"></div>
                                    </div>
                                    <div class="single-quantity">
                                        <p>Item Qty</p>
                                        <div class="pro-qty"><input type="number"  name="item_quantity"></div>
                                    </div>
                                    <div class="single-quantity last">
                                        <p>Liquor Qty</p>
                                        <div class="pro-qty"><input type="number"  name="liquor_quantity"></div>
                                    </div>
                                </div>
                                <div class="room-selector">
                                    <p>CHOOSE EXTRA ITEMS</p>
                                    <select class="suit-select" name="choose_extra_items">
                                        <option>Make sure your item are correct before confirming</option>
                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]">Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
                                         <option value="Soap 2PCS [scent Flavour / LKR 550.00]">Soap 2PCS [scent Flavour / LKR 550.00]</option>
                                        <option value="Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]">Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]</option>
                                        <option value="Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]">Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]</option>
										<option value="Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]"> Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]</option>
										<option value="The ultimate guide to the best Towel [LKR 1700.00]">The ultimate guide to the best Towel [LKR 1700.00]</option>
										<option value="Soft Pillows [2PCS/LKR 2500.00]">Soft Pillows [2PCS/LKR 2500.00]</option>
										<option value="Complimentary Refreshments [LKR 1500.00]"> Complimentary Refreshments [LKR 1500.00]</option>
										<option value="Coffee[hot bottle] & Biscuits [LKR 550.00]">Coffee[hot bottle] & Biscuits [LKR 550.00]</option>
										<option value="Tea & Biscuits/Cake/Banana [LKR 550.00]">Tea & Biscuits/Cake/Banana [LKR 550.00]</option>
										<option value="Breakfirst & Lunch Packet [LKR 1200.00]">Breakfirst & Lunch Packet [LKR 1200.00]</option>
										<option value="Fruits Bag [LKR 700.00]">Fruits Bag [LKR 700.00]</option>
                                    </select>
									</div>
									<div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        <option>Make sure your item are correct before confirming</option>
                                        <option value="VODKA [serve] [Bottle / LKR 2700.00]">VODKA [serve] [Bottle / LKR 2700.00]</option>
                                        <option value="RUM WHISKEY[LKR 3000.00]">RUM WHISKEY[LKR 3000.00]</option>
                                        <option value="GIN CANE[2L] [LKR 2500.00]">GIN CANE[2L] [LKR 2500.00]</option>
										<option value="SCOTCH [LKR 1600.00]">SCOTCH [LKR 1600.00]</option>
										<option value="RYE WHISKEY [Shining glass bottle LKR 2200.00]">RYE WHISKEY [Shining glass bottle LKR 2200.00]</option>
										<option value="OTHER WHISKEY (2 Shot Serve/LKR 1000.00)">OTHER WHISKEY (2 Shot Serve/LKR 1000.00)</option>
										<option value="* VAT 69">* VAT 69</option>
										<option value="* GRANTS FAMILY RESERVA">* GRANTS FAMILY RESERVA</option>
										<option value="* BALLANTINES FINEST WHISKY">* BALLANTINES FINEST WHISKY</option>
										<option value="* DEWARS WHITE LABEL">* DEWARS WHITE LABEL</option>
										<option value="* CANADIAN CLUB 5YRS">* CANADIAN CLUB 5YRS</option>
										<option value="* GRANT SELECT RESERVE">* GRANT SELECT RESERVE</option>
                                    </select>
                                </div>
	                                <button type="submit" formmethod="post" >SUBMIT </button>
									
                            </form>
                        </div>
                    </div>
                </div>
            </div> 

    <!-- Js Plugins -->
    <script src="inventory/js/jquery-3.3.1.min.js"></script>
    <script src="inventory/js/bootstrap.min.js"></script>
    <script src="inventory/js/jquery.magnific-popup.min.js"></script>
    <script src="inventory/js/jquery-ui.min.js"></script>
    <script src="inventory/js/jquery.nice-select.min.js"></script>
    <script src="inventory/js/jquery.slicknav.js"></script>
    <script src="inventory/js/owl.carousel.min.js"></script>
    <script src="inventory/js/main.js"></script>
    
</body>

</html>