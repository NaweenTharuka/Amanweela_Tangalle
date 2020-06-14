<%@page import="Beans.UserBean"%>
<%@page import="Beans.TransManageBeans"%>
<%@page import="java.util.List"%>
<%@page import="dao.TransManageDao"%>
<%@page import="Handler.TransManageHandler"%>
<%@page import="Handler.UserHandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>



<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Travel/css/main.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
<script src="https://kit.fontawesome.com/6bcee8e3da.js"></script>

<title>Admin-Travel</title>

</head>
<body onload="getmonth()">
<%
	TransManageDao dao=new TransManageDao();	
	//contactUsDao dao_Contact=new contactUsDao();

	UserBean sessionCurrentBean=(UserBean) session.getAttribute("currentSessionUser");

	String uNAME=(String)session.getAttribute("currentU");
	//String uRole=(String)session.getAttribute("currentRole");
	String uNAME2=null,uname=null;
	String uRole=null;
	int uid=0;
	
	if(session.getAttribute("currentSessionUser")==null){
		response.sendRedirect("index.jsp");
	}
	else if(session.getAttribute("currentSessionUser")!=null && !sessionCurrentBean.getRole().equals("admin")){
		response.sendRedirect("index.jsp");
	}
	else if((session.getAttribute("currentSessionUser")!=null && sessionCurrentBean.getRole().equals("admin") && (!sessionCurrentBean.getAdmin_role_type().equals("travel") || sessionCurrentBean.getAdmin_role_type().equals(" ")))){
		response.sendRedirect("index.jsp");
	}
	else if(session.getAttribute("currentSessionUser")!=null && sessionCurrentBean.getRole().equals("admin") && sessionCurrentBean.getAdmin_role_type().equals("travel") ){
		//UserBean sss=(UserBean) session.getAttribute("currentSessionUser");
		uRole=sessionCurrentBean.getRole();
		uNAME2=sessionCurrentBean.getFname();
		uid=sessionCurrentBean.getUid();
		uname=sessionCurrentBean.getUname();
		
	}
	
%>
<%@include file="header.jsp" %>
<section>
</section>

<div class="leftPanel" id="navigation" >
	<p>MAIN NAVIGATION</p>
	<a data-tab="#tab_1" data-tabCss="#panel_1" >
		<div class="panel active" id="Panel_1">
			<i class="fa fa-car-side"></i>
			<span>Travel <%=uRole %></span>
		</div>
	</a>
	<a data-tab="#tab_2" data-tabCss="#panel_2" >
		<div class="panel" id="Panel_2">
			<i class="fas fa-chart-bar"></i>
			<span>Report Chart</span>
		</div>
	</a>
	<a data-tab="#tab_3" data-tabCss="#panel_3" style="display: none;">
		<div class="panel" id="Panel_3">
			<i class="fas fa-comments"></i>
			<span>Message</span>
		</div>
	</a>
</div>
<div class="mainDiv">
	<div id="tab_1" class="panel_main">
		<%@ include file = "admin_travelReq.jsp" %>
	</div>
	<div id="tab_2" class="panel_main" >
		<%@ include file = "travel_report_chart.jsp" %>
	</div>
	<div id="tab_3" class="panel_main">
		<div class="card-1">
				<div class="admin-message">
		
					<div class="fixed-div-message">
						<div class="admin-message-send-div">
							<form action="ContactusHandler" method="post">
								<input type="hidden" name="action" value="insertAdmin">
								<input type="hidden" name="msType" value="2">
								<input type="hidden" name="uid" value="<%=uid%>">
								<input type="hidden" name="to_uid" value="17">
								<input type="hidden" name="uname" value="<%=uname%>">
								<input type="hidden" name="link" value="admin-travel.jsp">
								
								<input type="text" name="inbox">
									
								<button type="submit">submit</button>
							</form>
						</div>
					</div>				
				</div>
			</div>
		
	</div>
</div>
</body>

<script type="text/javascript">
	$('#MesssgeDialogBox').on('show.bs.modal', function (event){
	  var button = $(event.relatedTarget)
	  var recipient = button.data('whatever')
	  var modal = $(this)
	  modal.find('.modal-title').text('Send message to ' + recipient )
	  modal.find('.modal-body input').val(recipient)
	})
	
	/* ********** */
	/* javascript for showing the bottom of the div content with overflow hidden */
	
	document.getElementById("msList").scrollTop = document.getElementById("msList").scrollHeight;
	
	/* ****** */
	
	
</script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>      
  <script>
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
  
  
  
  //remove localstorage item

	//$(window).unload(function(){
	//	  localStorage.removeItem('currentTab');
	//	});
	
 //end remove localstorage item 
    
 
 $("#navigation a").on("click", function(e){
      e.preventDefault();
      
      var currTab = $(this).data("tab");
      sessionStorage.setItem("currentTab", currTab);
      $(".panel_main").hide();
      $(currTab).fadeIn();
    });

    var lastSelectedTab = sessionStorage.getItem("currentTab");
    if (!lastSelectedTab) {
      lastSelectedTab = "#tab_1";
    }
    $(lastSelectedTab).fadeIn();
  
  </script>  


<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#t1 tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</html>