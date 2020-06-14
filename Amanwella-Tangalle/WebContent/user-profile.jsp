<%@page import="dao.*"%>
<%@page import="Beans.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Travel/css/main.css">
<link rel="stylesheet" href="Travel/css/profile.css">
<link rel="stylesheet" href="Travel/css/travel.css">
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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Account</title>
</head>
<body>
	<%@include file="header1.jsp"%>
	<%
		int uid = 0;
		if (session.getAttribute("currentSessionUser") == null) {
			response.sendRedirect("index.jsp?status=status=loginfirst");

		} else if (session.getAttribute("currentSessionUser") != null) {
			UserBean userbean = (UserBean) session.getAttribute("currentSessionUser");
			uid = userbean.getUid();
		}
	%>
	<div class="leftPanel" id="navigation">
		<p>MAIN NAVIGATION</p>
		<a data-tab="#tab_1" data-tabCss="#panel_1">
			<div class="panel" id="Panel_1">
				<i class="fas fa-user-alt"></i> <span>Account</span>
			</div>
		</a>
	</div>
	<div class="mainDiv">		
		<div id="tab_1" class="panel_main">
			<div class="travel_main_2 proDiv">
				<div class="form-group imgChoose">
					<div class="imgDiv">
						<img src="user-propic.jsp?uid=<%=uid%>" alt="no image" >
					</div>
					<form action="UserHandler?action=UpdatePropic" method="post" enctype="multipart/form-data" >
						<div id="choose">
							<input type="file" id="real-file" name="propic" hidden="hidden" />
							<!-- <button type="button" id="custom-button1" >Change picture</button>  -->
							<div class="cameraRadiusDiv" id="custom-button1">
								<i class="fas fa-camera" ></i>
							</div>
						</div>
						<input type="hidden" name="uid" value="<%=uid%>"> 
						<button type="submit">Change picture</button>
					</form>
				</div>
				<%
					UserDao userDao = new UserDao();
					List<UserBean> userDetails = userDao.getUser(uid);
	
					for (UserBean res : userDetails) {
				%>
				<div class="form-group">
					<h5>Profile</h5>
					<br>
					<form action="UserHandler?action=editUser&uid=<%=uid %>" method="post">
						<div class="divDiv">
							<div class="form-group-details">
								<label>User name</label>
								<input type="text" name="uname" value="<%=res.getUname()%>">
							</div>
							<div class="form-group-details">
								<label>Role</label>
								<input type="text" name="reole" value="<%=res.getRole()%> <%if(res.getAdmin_role_type()!=null){ %> - <%=res.getAdmin_role_type() %> <%} %>" readonly="readonly">
							</div>
						</div>
						<div class="divDiv">
							<div class="form-group-details">
								<label>First name</label>
								<input type="text" name="fname" value="<%=res.getFname()%>">
							</div>
							<div class="form-group-details">
								<label>Last name</label>
								<input type="text" name="lname" value="<%=res.getLname()%>">
							</div>
						</div>
						<button type="submit">Save changes</button>
					</form>
				</div>
				<%
					}
				%>
				<div class="form-group">
					<h5>Password</h5>
					<br>
					<form action="UserHandler?action=editPassword&uid=<%=uid %>" method="post" onsubmit="return macthPass()" name="changePassForm">
						<p></p>
						<div class="divDiv">
							<div class="form-group-details">
								<label>New password</label>
								<input type="password" name="npass" id="npass" >
							</div>
							<div class="form-group-details">
								<label>Confirm password</label>
								<input type="password" name="cpass" id="cpass" >
							</div>
						</div>
						<div class="divDiv">
							<div class="form-group-details">
								<label>Old password</label>
								<input type="password" name="opass" >
							</div>
						</div>
						<button type="submit">Save password</button>
					</form>
				</div>
				<div class="form-group">
					<h5 >Cancel Account</h5>
					<br>
					<p><span class="span-warning">Warning:</span> You will not be able to access your account data, your contacts or conversations after you confirm this action.</p>
					<button type="submit">Cancel Account</button>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
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

	$("#navigation a").on("click", function(e) {
		e.preventDefault();

		var currTab = $(this).data("tab");
		sessionStorage.setItem("currentTab", currTab);
		$(".panel_main").hide();
		$(currTab).fadeIn();
	});

	var lastSelectedTab = sessionStorage.getItem("currentTab");
	if (!lastSelectedTab) {
		lastSelectedTab = "#tab_4";
	}
	$(lastSelectedTab).fadeIn();

	
function funcDestinationEdit(parY) {
		
		var x=document.getElementById('dLocationEdit'+parY).value;	
		
		if(x=='ArugamBay'){
			document.getElementById('travelCostEdit'+parY).value=19750;
		}else if(x=='HortonPlace'){
			document.getElementById('travelCostEdit'+parY).value=11500;
		}else if(x=='YalaPark'){
			document.getElementById('travelCostEdit'+parY).value=13400;
		}else if(x=='Trincomalee'){
			document.getElementById('travelCostEdit'+parY).value=15850;
		}
		
	}
	
	function macthPass(){
		
		var newpass=changePassForm.npass.value;
		var conpass=changePassForm.cpass.value;
		
		if(newpass==conpass){
			alert('same');
			return true;
		}else {
			return false;
		}
	}
	
	
	const realFileBtn = document.getElementById("real-file");
	const customBtn = document.getElementById("custom-button1");
	const customTxt = document.getElementById("custom-text");

	customBtn.addEventListener("click", function() {
		realFileBtn.click();
	});

	realFileBtn.addEventListener("change", function() {
		if (realFileBtn.value) {
			customTxt.innerHTML = realFileBtn.value
					.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1];
		} else {
			customTxt.innerHTML = "No file chosen, yet.";
		}
	});
</script>
</html>