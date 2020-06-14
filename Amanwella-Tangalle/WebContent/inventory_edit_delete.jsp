<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
	<link href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
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
	<link rel="stylesheet" href="inventory/css/style333.css" type="text/css">





</head>

<body>

	<script type="text/javascript">
   
   	function Edit(){
   		
   		$('input[type=number]').removeAttr('readonly');
   		$('input[type=text]').removeAttr('readonly');
   		$('input[type=text]').removeAttr('disabled');
   	}
</script>
	
		
    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="inner-header">
                <div class="logo">
				 <!--<span class="logoRed">A</span>manwella<br>-->
				 
	     
                    <a href="./index.jsp"><img src="img/download_edited3.jpg" alt=""></a>
                </div>
               
                <nav class="main-menu mobile-menu">
                    <ul>
                        <li ><a href="./index.jsp">Home</a></li>
                        
                        <li> <a href="./user-reservation.jsp">Accommodation</a></li>
                        <li><a href="#">Event And Activities</a>
                            <ul class="drop-menu">
                                <li><a href="about-us.html">Restaurant</a></li>
                                <li><a href="rooms.html">Weddings</a></li>
                                <li><a href="services.html">Services</a></li>
                            </ul>
                        </li>
                        <li><a href="./inventory.jsp">Inventories</a></li>
                        <li><a href="./blog.html">Tours</a></li>
                        <li><a href="./contact_home.jsp">Contact-Us</a></li>
                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header><br><br>
    <!-- Header End -->


    <!-- Room Availability Section Begin -->
    <section class="room-availability spad">
        <div class="container" style="padding-top:40px;">
            <div class="room-check">
                <div class="row">
                    
                    <div class="col-lg-6">
                        <div class="check-form">
                            <h2>Choose Extra Availability</h2>
                            <form action="<%=application.getContextPath() %>/inventory_change" action="post">
                            	<input type="hidden" name="id" value="${obj.id}">
                                <div class="datepicker">
                                    <div class="date-select">
                                        <p>Date</p>
                                        <input type="text" class="datepicker-1"  name="date" disabled value="${obj.date}">
                                        <img src="inventory/images/calendar.png" alt="">
                                    </div>
                                   <br>
								   <br>
								   <label for="fname"></label>
									  <input type="text"   placeholder="Room Id" name="room_id" readonly="readonly"required maxlength="6" value="${obj.room_id}">
									  
									<br><br>
									<br>
									<label for="fname"></label>
									  <input type="text"   placeholder="Your Name"  name="your_name" readonly="readonly"required value="${obj.your_name}">
								   
                                </div>
                                <div class="room-quantity">
                                    <div class="single-quantity">
                                        <p>Adults</p>
                                        <div class="pro-qty"><input type="text"  name="adult_count"   value="${obj.adults}"></div>
                                    </div>
                                    <div class="single-quantity">
                                        <p>Item Qty</p>
                                        <div class="pro-qty"><input type="text"  name="item_quantity"   value="${obj.item_quantity}"></div>
                                    </div>
                                    <div class="single-quantity last">
                                        <p>Liquor Qty</p>
                                        <div class="pro-qty"><input type="text"  name="liquor_quantity"   value="${obj.liquor_quantity}"></div>
                                    </div>
                                </div>
                    	        <c:set var="name" value="${obj.extra_item}" scope="session"/>
                    			<c:choose>
         
						         <c:when test="${name == 'Ultra-Soft Pillows [2PCS/LKR 1200.00]'}">
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" selected>Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
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
						         </c:when>
						         <c:when test="${name == 'Soap 2PCS [scent Flavour / LKR 550.00]'}">
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" >Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
			                                        <option value="Soap 2PCS [scent Flavour / LKR 550.00]" selected>Soap 2PCS [scent Flavour / LKR 550.00]</option>
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
						         </c:when>
						         <c:when test="${name == 'Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]'}">
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" >Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
			                                        <option value="Soap 2PCS [scent Flavour / LKR 550.00]">Soap 2PCS [scent Flavour / LKR 550.00]</option>
			                                        <option value="Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]" selected>Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]</option>
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
						         </c:when>
						         <c:when test = "${name == 'Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]'}">
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" >Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
			                                        <option value="Soap 2PCS [scent Flavour / LKR 550.00]">Soap 2PCS [scent Flavour / LKR 550.00]</option>
			                                        <option value="Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]">Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]</option>
			                                        <option value="Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]" selected>Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]</option>
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
						         </c:when>
						         <c:when test = "${name == 'Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]'}">
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" >Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
			                                        <option value="Soap 2PCS [scent Flavour / LKR 550.00]">Soap 2PCS [scent Flavour / LKR 550.00]</option>
			                                        <option value="Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]">Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]</option>
			                                        <option value="Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]">Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]</option>
													<option value="Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]" selected> Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]</option>
													<option value="The ultimate guide to the best Towel [LKR 1700.00]">The ultimate guide to the best Towel [LKR 1700.00]</option>
													<option value="Soft Pillows [2PCS/LKR 2500.00]">Soft Pillows [2PCS/LKR 2500.00]</option>
													<option value="Complimentary Refreshments [LKR 1500.00]"> Complimentary Refreshments [LKR 1500.00]</option>
													<option value="Coffee[hot bottle] & Biscuits [LKR 550.00]">Coffee[hot bottle] & Biscuits [LKR 550.00]</option>
													<option value="Tea & Biscuits/Cake/Banana [LKR 550.00]">Tea & Biscuits/Cake/Banana [LKR 550.00]</option>
													<option value="Breakfirst & Lunch Packet [LKR 1200.00]">Breakfirst & Lunch Packet [LKR 1200.00]</option>
													<option value="Fruits Bag [LKR 700.00]">Fruits Bag [LKR 700.00]</option>
			                                    </select>
												</div>
						         </c:when>
						         <c:when test = "${name == 'The ultimate guide to the best Towel [LKR 1700.00]'}">
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" >Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
			                                        <option value="Soap 2PCS [scent Flavour / LKR 550.00]">Soap 2PCS [scent Flavour / LKR 550.00]</option>
			                                        <option value="Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]">Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]</option>
			                                        <option value="Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]">Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]</option>
													<option value="Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]"> Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]</option>
													<option value="The ultimate guide to the best Towel [LKR 1700.00]" selected>The ultimate guide to the best Towel [LKR 1700.00]</option>
													<option value="Soft Pillows [2PCS/LKR 2500.00]">Soft Pillows [2PCS/LKR 2500.00]</option>
													<option value="Complimentary Refreshments [LKR 1500.00]"> Complimentary Refreshments [LKR 1500.00]</option>
													<option value="Coffee[hot bottle] & Biscuits [LKR 550.00]">Coffee[hot bottle] & Biscuits [LKR 550.00]</option>
													<option value="Tea & Biscuits/Cake/Banana [LKR 550.00]">Tea & Biscuits/Cake/Banana [LKR 550.00]</option>
													<option value="Breakfirst & Lunch Packet [LKR 1200.00]">Breakfirst & Lunch Packet [LKR 1200.00]</option>
													<option value="Fruits Bag [LKR 700.00]">Fruits Bag [LKR 700.00]</option>
			                                    </select>
												</div>
						         </c:when>
						         <c:when test = "${name == 'Soft Pillows [2PCS/LKR 2500.00]'}">
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" >Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
			                                        <option value="Soap 2PCS [scent Flavour / LKR 550.00]">Soap 2PCS [scent Flavour / LKR 550.00]</option>
			                                        <option value="Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]">Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]</option>
			                                        <option value="Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]">Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]</option>
													<option value="Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]"> Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]</option>
													<option value="The ultimate guide to the best Towel [LKR 1700.00]">The ultimate guide to the best Towel [LKR 1700.00]</option>
													<option value="Soft Pillows [2PCS/LKR 2500.00]" selected>Soft Pillows [2PCS/LKR 2500.00]</option>
													<option value="Complimentary Refreshments [LKR 1500.00]"> Complimentary Refreshments [LKR 1500.00]</option>
													<option value="Coffee[hot bottle] & Biscuits [LKR 550.00]">Coffee[hot bottle] & Biscuits [LKR 550.00]</option>
													<option value="Tea & Biscuits/Cake/Banana [LKR 550.00]">Tea & Biscuits/Cake/Banana [LKR 550.00]</option>
													<option value="Breakfirst & Lunch Packet [LKR 1200.00]">Breakfirst & Lunch Packet [LKR 1200.00]</option>
													<option value="Fruits Bag [LKR 700.00]">Fruits Bag [LKR 700.00]</option>
			                                    </select>
												</div>
						         </c:when>
						         <c:when test = "${name == 'Complimentary Refreshments [LKR 1500.00]'}">
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" >Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
			                                        <option value="Soap 2PCS [scent Flavour / LKR 550.00]">Soap 2PCS [scent Flavour / LKR 550.00]</option>
			                                        <option value="Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]">Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]</option>
			                                        <option value="Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]">Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]</option>
													<option value="Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]"> Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]</option>
													<option value="The ultimate guide to the best Towel [LKR 1700.00]">The ultimate guide to the best Towel [LKR 1700.00]</option>
													<option value="Soft Pillows [2PCS/LKR 2500.00]">Soft Pillows [2PCS/LKR 2500.00]</option>
													<option value="Complimentary Refreshments [LKR 1500.00]" selected> Complimentary Refreshments [LKR 1500.00]</option>
													<option value="Coffee[hot bottle] & Biscuits [LKR 550.00]">Coffee[hot bottle] & Biscuits [LKR 550.00]</option>
													<option value="Tea & Biscuits/Cake/Banana [LKR 550.00]">Tea & Biscuits/Cake/Banana [LKR 550.00]</option>
													<option value="Breakfirst & Lunch Packet [LKR 1200.00]">Breakfirst & Lunch Packet [LKR 1200.00]</option>
													<option value="Fruits Bag [LKR 700.00]">Fruits Bag [LKR 700.00]</option>
			                                    </select>
												</div>
						         </c:when>
						         <c:when test = "${name == 'Coffee[hot bottle] & Biscuits [LKR 550.00]'}">
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" >Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
			                                        <option value="Soap 2PCS [scent Flavour / LKR 550.00]">Soap 2PCS [scent Flavour / LKR 550.00]</option>
			                                        <option value="Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]">Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]</option>
			                                        <option value="Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]">Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]</option>
													<option value="Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]"> Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]</option>
													<option value="The ultimate guide to the best Towel [LKR 1700.00]">The ultimate guide to the best Towel [LKR 1700.00]</option>
													<option value="Soft Pillows [2PCS/LKR 2500.00]">Soft Pillows [2PCS/LKR 2500.00]</option>
													<option value="Complimentary Refreshments [LKR 1500.00]"> Complimentary Refreshments [LKR 1500.00]</option>
													<option value="Coffee[hot bottle] & Biscuits [LKR 550.00]" selected>Coffee[hot bottle] & Biscuits [LKR 550.00]</option>
													<option value="Tea & Biscuits/Cake/Banana [LKR 550.00]">Tea & Biscuits/Cake/Banana [LKR 550.00]</option>
													<option value="Breakfirst & Lunch Packet [LKR 1200.00]">Breakfirst & Lunch Packet [LKR 1200.00]</option>
													<option value="Fruits Bag [LKR 700.00]">Fruits Bag [LKR 700.00]</option>
			                                    </select>
												</div>
						         </c:when>
						         <c:when test = "${name == 'Tea & Biscuits/Cake/Banana [LKR 550.00]'}">
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" >Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
			                                        <option value="Soap 2PCS [scent Flavour / LKR 550.00]">Soap 2PCS [scent Flavour / LKR 550.00]</option>
			                                        <option value="Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]">Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]</option>
			                                        <option value="Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]">Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]</option>
													<option value="Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]"> Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]</option>
													<option value="The ultimate guide to the best Towel [LKR 1700.00]">The ultimate guide to the best Towel [LKR 1700.00]</option>
													<option value="Soft Pillows [2PCS/LKR 2500.00]">Soft Pillows [2PCS/LKR 2500.00]</option>
													<option value="Complimentary Refreshments [LKR 1500.00]"> Complimentary Refreshments [LKR 1500.00]</option>
													<option value="Coffee[hot bottle] & Biscuits [LKR 550.00]">Coffee[hot bottle] & Biscuits [LKR 550.00]</option>
													<option value="Tea & Biscuits/Cake/Banana [LKR 550.00]" selected>Tea & Biscuits/Cake/Banana [LKR 550.00]</option>
													<option value="Breakfirst & Lunch Packet [LKR 1200.00]">Breakfirst & Lunch Packet [LKR 1200.00]</option>
													<option value="Fruits Bag [LKR 700.00]">Fruits Bag [LKR 700.00]</option>
			                                    </select>
												</div>
						         </c:when>
						         <c:when test = "${name == 'Breakfirst & Lunch Packet [LKR 1200.00]'}">
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" >Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
			                                        <option value="Soap 2PCS [scent Flavour / LKR 550.00]">Soap 2PCS [scent Flavour / LKR 550.00]</option>
			                                        <option value="Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]">Luxuriously-Breathable Sheets [2PCS/LKR 3800.00]</option>
			                                        <option value="Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]">Mini-Luxuriously-Breathable Sheets [4PCS/LKR 2500.00]</option>
													<option value="Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]"> Superabsorbent and Generously Sized Bath Towels [2PCS/LKR 2500.00]</option>
													<option value="The ultimate guide to the best Towel [LKR 1700.00]">The ultimate guide to the best Towel [LKR 1700.00]</option>
													<option value="Soft Pillows [2PCS/LKR 2500.00]">Soft Pillows [2PCS/LKR 2500.00]</option>
													<option value="Complimentary Refreshments [LKR 1500.00]"> Complimentary Refreshments [LKR 1500.00]</option>
													<option value="Coffee[hot bottle] & Biscuits [LKR 550.00]">Coffee[hot bottle] & Biscuits [LKR 550.00]</option>
													<option value="Tea & Biscuits/Cake/Banana [LKR 550.00]">Tea & Biscuits/Cake/Banana [LKR 550.00]</option>
													<option value="Breakfirst & Lunch Packet [LKR 1200.00]" selected>Breakfirst & Lunch Packet [LKR 1200.00]</option>
													<option value="Fruits Bag [LKR 700.00]">Fruits Bag [LKR 700.00]</option>
			                                    </select>
												</div>
						         </c:when>
						         <c:when test = "${name == 'Fruits Bag [LKR 700.00]'}">
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" >Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
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
													<option value="Fruits Bag [LKR 700.00]" selected>Fruits Bag [LKR 700.00]</option>
			                                    </select>
												</div>
						         </c:when>
						         <c:otherwise>
						            <div class="room-selector">
			                                    <p>CHOOSE EXTRA ITEMS</p>
			                                    <select class="suit-select" name="choose_extra_items">
			                              
			                                        <option value="Ultra-Soft Pillows [2PCS/LKR 1200.00]" selected>Ultra-Soft Pillows [2PCS/LKR 1200.00]</option>
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
						         </c:otherwise>
						       </c:choose>
                    		   <c:set var="name2" value="${obj.liquor}" scope="session"/>	
										
							   <c:choose>
         
						         <c:when test="${name2 == 'VODKA [serve] [Bottle / LKR 2700.00]'}">
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
                                        <option value="VODKA [serve] [Bottle / LKR 2700.00]" selected>VODKA [serve] [Bottle / LKR 2700.00]</option>
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
						         </c:when>
						         <c:when test="${name2 == 'RUM WHISKEY[LKR 3000.00]'}">
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
                                        <option value="VODKA [serve] [Bottle / LKR 2700.00]">VODKA [serve] [Bottle / LKR 2700.00]</option>
                                        <option value="RUM WHISKEY[LKR 3000.00]" selected>RUM WHISKEY[LKR 3000.00]</option>
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
						         </c:when>
						         <c:when test="${name2 == 'GIN CANE[2L] [LKR 2500.00]'}">
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
                                        <option value="VODKA [serve] [Bottle / LKR 2700.00]">VODKA [serve] [Bottle / LKR 2700.00]</option>
                                        <option value="RUM WHISKEY[LKR 3000.00]">RUM WHISKEY[LKR 3000.00]</option>
                                        <option value="GIN CANE[2L] [LKR 2500.00]" selected>GIN CANE[2L] [LKR 2500.00]</option>
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
						         </c:when>
						         <c:when test = "${name2 == 'SCOTCH [LKR 1600.00]'}">
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
                                        <option value="VODKA [serve] [Bottle / LKR 2700.00]">VODKA [serve] [Bottle / LKR 2700.00]</option>
                                        <option value="RUM WHISKEY[LKR 3000.00]">RUM WHISKEY[LKR 3000.00]</option>
                                        <option value="GIN CANE[2L] [LKR 2500.00]">GIN CANE[2L] [LKR 2500.00]</option>
										<option value="SCOTCH [LKR 1600.00]" selected>SCOTCH [LKR 1600.00]</option>
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
						         </c:when>
						         <c:when test = "${name2 == 'RYE WHISKEY [Shining glass bottle LKR 2200.00]'}">
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
                                        <option value="VODKA [serve] [Bottle / LKR 2700.00]">VODKA [serve] [Bottle / LKR 2700.00]</option>
                                        <option value="RUM WHISKEY[LKR 3000.00]">RUM WHISKEY[LKR 3000.00]</option>
                                        <option value="GIN CANE[2L] [LKR 2500.00]">GIN CANE[2L] [LKR 2500.00]</option>
										<option value="SCOTCH [LKR 1600.00]">SCOTCH [LKR 1600.00]</option>
										<option value="RYE WHISKEY [Shining glass bottle LKR 2200.00]" selected>RYE WHISKEY [Shining glass bottle LKR 2200.00]</option>
										<option value="OTHER WHISKEY (2 Shot Serve/LKR 1000.00)">OTHER WHISKEY (2 Shot Serve/LKR 1000.00)</option>
										<option value="* VAT 69">* VAT 69</option>
										<option value="* GRANTS FAMILY RESERVA">* GRANTS FAMILY RESERVA</option>
										<option value="* BALLANTINES FINEST WHISKY">* BALLANTINES FINEST WHISKY</option>
										<option value="* DEWARS WHITE LABEL">* DEWARS WHITE LABEL</option>
										<option value="* CANADIAN CLUB 5YRS">* CANADIAN CLUB 5YRS</option>
										<option value="* GRANT SELECT RESERVE">* GRANT SELECT RESERVE</option>
                                    </select>
                                	</div>
						         </c:when>
						         <c:when test = "${name2 == 'OTHER WHISKEY (2 Shot Serve/LKR 1000.00)'}">
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
                                        <option value="VODKA [serve] [Bottle / LKR 2700.00]">VODKA [serve] [Bottle / LKR 2700.00]</option>
                                        <option value="RUM WHISKEY[LKR 3000.00]">RUM WHISKEY[LKR 3000.00]</option>
                                        <option value="GIN CANE[2L] [LKR 2500.00]">GIN CANE[2L] [LKR 2500.00]</option>
										<option value="SCOTCH [LKR 1600.00]">SCOTCH [LKR 1600.00]</option>
										<option value="RYE WHISKEY [Shining glass bottle LKR 2200.00]">RYE WHISKEY [Shining glass bottle LKR 2200.00]</option>
										<option value="OTHER WHISKEY (2 Shot Serve/LKR 1000.00)" selected>OTHER WHISKEY (2 Shot Serve/LKR 1000.00)</option>
										<option value="* VAT 69">* VAT 69</option>
										<option value="* GRANTS FAMILY RESERVA">* GRANTS FAMILY RESERVA</option>
										<option value="* BALLANTINES FINEST WHISKY">* BALLANTINES FINEST WHISKY</option>
										<option value="* DEWARS WHITE LABEL">* DEWARS WHITE LABEL</option>
										<option value="* CANADIAN CLUB 5YRS">* CANADIAN CLUB 5YRS</option>
										<option value="* GRANT SELECT RESERVE">* GRANT SELECT RESERVE</option>
                                    </select>
                                	</div>
						         </c:when>
						         <c:when test = "${name2 == '* VAT 69'}">
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
                                        <option value="VODKA [serve] [Bottle / LKR 2700.00]">VODKA [serve] [Bottle / LKR 2700.00]</option>
                                        <option value="RUM WHISKEY[LKR 3000.00]">RUM WHISKEY[LKR 3000.00]</option>
                                        <option value="GIN CANE[2L] [LKR 2500.00]">GIN CANE[2L] [LKR 2500.00]</option>
										<option value="SCOTCH [LKR 1600.00]">SCOTCH [LKR 1600.00]</option>
										<option value="RYE WHISKEY [Shining glass bottle LKR 2200.00]">RYE WHISKEY [Shining glass bottle LKR 2200.00]</option>
										<option value="OTHER WHISKEY (2 Shot Serve/LKR 1000.00)">OTHER WHISKEY (2 Shot Serve/LKR 1000.00)</option>
										<option value="* VAT 69" selected>* VAT 69</option>
										<option value="* GRANTS FAMILY RESERVA">* GRANTS FAMILY RESERVA</option>
										<option value="* BALLANTINES FINEST WHISKY">* BALLANTINES FINEST WHISKY</option>
										<option value="* DEWARS WHITE LABEL">* DEWARS WHITE LABEL</option>
										<option value="* CANADIAN CLUB 5YRS">* CANADIAN CLUB 5YRS</option>
										<option value="* GRANT SELECT RESERVE">* GRANT SELECT RESERVE</option>
                                    </select>
                                	</div>
						         </c:when>
						         <c:when test = "${name2 == '* GRANTS FAMILY RESERVA'}">
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
                                        <option value="VODKA [serve] [Bottle / LKR 2700.00]">VODKA [serve] [Bottle / LKR 2700.00]</option>
                                        <option value="RUM WHISKEY[LKR 3000.00]">RUM WHISKEY[LKR 3000.00]</option>
                                        <option value="GIN CANE[2L] [LKR 2500.00]">GIN CANE[2L] [LKR 2500.00]</option>
										<option value="SCOTCH [LKR 1600.00]">SCOTCH [LKR 1600.00]</option>
										<option value="RYE WHISKEY [Shining glass bottle LKR 2200.00]">RYE WHISKEY [Shining glass bottle LKR 2200.00]</option>
										<option value="OTHER WHISKEY (2 Shot Serve/LKR 1000.00)">OTHER WHISKEY (2 Shot Serve/LKR 1000.00)</option>
										<option value="* VAT 69">* VAT 69</option>
										<option value="* GRANTS FAMILY RESERVA" selected>* GRANTS FAMILY RESERVA</option>
										<option value="* BALLANTINES FINEST WHISKY">* BALLANTINES FINEST WHISKY</option>
										<option value="* DEWARS WHITE LABEL">* DEWARS WHITE LABEL</option>
										<option value="* CANADIAN CLUB 5YRS">* CANADIAN CLUB 5YRS</option>
										<option value="* GRANT SELECT RESERVE">* GRANT SELECT RESERVE</option>
                                    </select>
                                	</div>
						         </c:when>
						         <c:when test = "${name2 == '* BALLANTINES FINEST WHISKY'}">
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
                                        <option value="VODKA [serve] [Bottle / LKR 2700.00]">VODKA [serve] [Bottle / LKR 2700.00]</option>
                                        <option value="RUM WHISKEY[LKR 3000.00]">RUM WHISKEY[LKR 3000.00]</option>
                                        <option value="GIN CANE[2L] [LKR 2500.00]">GIN CANE[2L] [LKR 2500.00]</option>
										<option value="SCOTCH [LKR 1600.00]">SCOTCH [LKR 1600.00]</option>
										<option value="RYE WHISKEY [Shining glass bottle LKR 2200.00]">RYE WHISKEY [Shining glass bottle LKR 2200.00]</option>
										<option value="OTHER WHISKEY (2 Shot Serve/LKR 1000.00)">OTHER WHISKEY (2 Shot Serve/LKR 1000.00)</option>
										<option value="* VAT 69">* VAT 69</option>
										<option value="* GRANTS FAMILY RESERVA">* GRANTS FAMILY RESERVA</option>
										<option value="* BALLANTINES FINEST WHISKY" selected>* BALLANTINES FINEST WHISKY</option>
										<option value="* DEWARS WHITE LABEL">* DEWARS WHITE LABEL</option>
										<option value="* CANADIAN CLUB 5YRS">* CANADIAN CLUB 5YRS</option>
										<option value="* GRANT SELECT RESERVE">* GRANT SELECT RESERVE</option>
                                    </select>
                                	</div>
						         </c:when>
						         <c:when test = "${name2 == '* DEWARS WHITE LABEL'}">
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
                                        <option value="VODKA [serve] [Bottle / LKR 2700.00]">VODKA [serve] [Bottle / LKR 2700.00]</option>
                                        <option value="RUM WHISKEY[LKR 3000.00]">RUM WHISKEY[LKR 3000.00]</option>
                                        <option value="GIN CANE[2L] [LKR 2500.00]">GIN CANE[2L] [LKR 2500.00]</option>
										<option value="SCOTCH [LKR 1600.00]">SCOTCH [LKR 1600.00]</option>
										<option value="RYE WHISKEY [Shining glass bottle LKR 2200.00]">RYE WHISKEY [Shining glass bottle LKR 2200.00]</option>
										<option value="OTHER WHISKEY (2 Shot Serve/LKR 1000.00)">OTHER WHISKEY (2 Shot Serve/LKR 1000.00)</option>
										<option value="* VAT 69">* VAT 69</option>
										<option value="* GRANTS FAMILY RESERVA">* GRANTS FAMILY RESERVA</option>
										<option value="* BALLANTINES FINEST WHISKY">* BALLANTINES FINEST WHISKY</option>
										<option value="* DEWARS WHITE LABEL" selected>* DEWARS WHITE LABEL</option>
										<option value="* CANADIAN CLUB 5YRS">* CANADIAN CLUB 5YRS</option>
										<option value="* GRANT SELECT RESERVE">* GRANT SELECT RESERVE</option>
                                    </select>
                                	</div>
						         </c:when>
						         <c:when test = "${name2 == '* CANADIAN CLUB 5YRS'}">
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
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
										<option value="* CANADIAN CLUB 5YRS" selected>* CANADIAN CLUB 5YRS</option>
										<option value="* GRANT SELECT RESERVE">* GRANT SELECT RESERVE</option>
                                    </select>
                                	</div>
						         </c:when>
						         <c:when test = "${name2 == '* GRANT SELECT RESERVE'}">
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
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
										<option value="* GRANT SELECT RESERVE" selected>* GRANT SELECT RESERVE</option>
                                    </select>
                                	</div>
						         </c:when>
						         <c:otherwise>
						            <div class="room-selector">
                                    <p>LIQUOR</p>
                                    <select class="suit-select" name="choose_liquor_items">
                                        
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
						         </c:otherwise>
						       </c:choose>	
									
	                           		<div class="bs">
									<input type="button" value="EDIT" onclick="Edit()"><br>
									</div>
									<div class="ss">
									<input type="submit" value="ORDER NOW" name="btn" formmethod="post"><br>
									</div>
									<div class="ff">
									<input type="submit" value="DELETE" name="btn" formmethod="post"> <br>
									</div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
			
            
    <!-- Follow Instagram Section End -->

    <!-- Footer Room Pic Section Begin -->
    
    <!-- Footer Room Pic Section End -->

    <!-- Footer Section Begin -->
    

  

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