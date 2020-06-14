<%@page import="Beans.*"%>
<%@page import="dao.*"%>
<%@page import="java.util.*"%>


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat+Alternates:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/foothead/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="css/foothead/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="css/foothead/css/flaticon.css"
	type="text/css">
<link rel="stylesheet" href="css/foothead/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="css/foothead/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="css/foothead/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="css/foothead/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="css/foothead/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="css/foothead/css/style.css" type="text/css">

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header-section " style="position: fixed">
		<div class="container-fluid">
			<div class="inner-header">
				<div class="logo">
					<!--<span class="logoRed">A</span>manwella<br>-->


					<a href="./index.jsp"><img src="img/download_edited3.jpg"
						alt=""></a>
				</div>
				<%
					UserBean sessionUserBean=(UserBean) session.getAttribute("currentSessionUser");
					//String sessionRole=sessionUserBean.getRole();
					TransManageDao sessionDao=new TransManageDao();	
				
					 if(sessionUserBean==null){
							
						String lastUrl=request.getParameter("PgUrl");
						
					%>
				<nav class="main-menu mobile-menu">
					<ul>
						<li><a href="./index.jsp">Home</a></li>
						<li><a href="./about-us.html">Gallery</a></li>
						<li><a href="./user-reservation.jsp">Accommodation</a></li>
						<li class="active"><a href="travel.jsp">Tours</a></li>
						<li><a>Utility</a>
							<ul class="drop-menu">
								<li><a href="user-laundry.jsp">Restaurant</a></li>
							</ul>
						</li>
						<li><a href="login.jsp">login</a> <span style="color: #fff;">
								| </span> <a href="reg.jsp">signup</a></li>
					</ul>
				</nav>
				<% }
						else if(sessionUserBean!=null && sessionUserBean.getRole().equals("user")){
							int uid_for_propic=sessionUserBean.getUid();
					%>
				<nav class="main-menu mobile-menu">
					<ul>
						<li><a href="./index.jsp">Home</a></li>
						<li><a href="./about-us.html">Gallery</a></li>
						<li><a href="./user-reservation.jsp">Accommodation</a></li>
						<li><a href="travel.jsp">Tours</a></li>
						<li><a>Utility</a>
							<ul class="drop-menu">
								<li><a href="user-laundry.jsp">Restaurant</a></li>
							</ul>
						</li>
						<li><a>Account</a>
							<ul class="drop-menu">
								<li><a><%=sessionUserBean.getUname()%></a></li>
								<li><a href="user-profile.jsp">Profile</a></li>
								<li><a href="UserHandler?action=logout"> <span>
											<i class="fas fa-power-off"></i>
									</span> <span class="title">Logout</span>
								</a></li>
							</ul>
						</li>
					</ul>
				</nav>
				<%
					} else if (sessionUserBean != null && sessionUserBean.getRole().equals("admin")) {

						int uid_for_propic = sessionUserBean.getUid();
				%>
				<nav class="main-menu mobile-menu">
					<ul>
						<li>
							<%
								if (sessionUserBean.getAdmin_role_type().equals("travel")) {
							%> <a href="admin-travel.jsp">ADMIN</a> <%
							 	} else if (sessionUserBean.getAdmin_role_type().equals("pay")) {
							 %> <a href="admin-payment.jsp">ADMIN</a> <%
							 	} else if (sessionUserBean.getAdmin_role_type().equals("prop")) {
							 %> <a href="admin-property.jsp">ADMIN</a> <%
							 	} else if (sessionUserBean.getAdmin_role_type().equals("cont")) {
							 %> <a href="admin-contactus.jsp">ADMIN</a> <%
							 	} else if (sessionUserBean.getAdmin_role_type().equals("emp")) {
							 %> <a href="admin-employee.jsp">ADMIN</a> <%
							 	} else if (sessionUserBean.getAdmin_role_type().equals("laun")) {
							 %> <a href="admin-laundry.jsp">ADMIN</a> <%
							 	} else if (sessionUserBean.getAdmin_role_type().equals("reservation")) {
							 %> <a href="admin-reservation.jsp">ADMIN</a> <%
							 	}
							 %>
						</li>
						<li><a href="./index.jsp">Home</a></li>
						<li><a href="./about-us.html">Gallery</a></li>
						<li><a href="./user-reservation.jsp">Accommodation</a></li>
						<li class="active"><a href="travel.jsp">Tours</a></li>
						<li><a>Utility</a>
							<ul class="drop-menu">
								<li><a href="user-laundry.jsp">Restaurant</a></li>
							</ul>
						</li>
						<li><a>Account</a>
							<ul class="drop-menu">
								<li><a><%=sessionUserBean.getUname()%></a></li>
								<li><a href="user-profile.jsp">Profile</a></li>
								<li><a href="UserHandler?action=logout"> <span>
											<i class="fas fa-power-off"></i>
									</span> <span class="title">Logout</span>
								</a></li>
							</ul>
						</li>

					</ul>
				</nav>
				<%
					}
				%>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>
	</header>
	<!-- Header End -->
	<script>

var x=0;

function openNav() {
	
	document.getElementById("resNavi").style.display="flex";
  document.getElementById("naviopen").style.display="none";
  document.getElementById("naviclose").style.display="block";
  //document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
  x=1;

	
}

function closeNav() {
  document.getElementById("resNavi").style.display="none";
  document.getElementById("naviopen").style.display="block";
  document.getElementById("naviclose").style.display="none";
  
}

function clearSession(){
	//sessionStorage.clear();
	sessionStorage.removeItem("currentTab");
}

function resizeNavi(){
	 if (screen.width < 1000){
		document.getElementById("resNavi").style.display="none";
		document.getElementById("naviopen").style.display="block";
		document.getElementById("naviclose").style.display="none";
	}
	 
	 if(x==1){
		 if (screen.width > 1000){
				document.getElementById("resNavi").style.display="block";
				document.getElementById("naviclose").style.display="none";
				document.getElementById("naviopen").style.display="none";
				x=0;
		}
	 }
}

function functionAcc() {
	document.getElementById("accDropdown").classList.toggle("show");
	}
window.onclick = function(event) {
	if (!event.target.matches('#acc-img')) {
		var dropdowns = document.getElementsByClassName("acc_ico-content");
		var i;
		for (i = 0; i < dropdowns.length; i++) {
			var openDropdown = dropdowns[i];
			if (openDropdown.classList.contains('show')) {
				openDropdown.classList.remove('show');
			}
		}
	}
}

</script>

	<script src="js/headfoot/js/jquery-3.3.1.min.js"></script>
	<script src="js/headfoot/js/bootstrap.min.js"></script>
	<script src="js/headfoot/js/jquery.magnific-popup.min.js"></script>
	<script src="js/headfoot/js/jquery-ui.min.js"></script>
	<script src="js/headfoot/js/jquery.nice-select.min.js"></script>
	<script src="js/headfoot/js/jquery.slicknav.js"></script>
	<script src="js/headfoot/js/owl.carousel.min.js"></script>
	<script src="js/headfoot/js/main.js"></script>