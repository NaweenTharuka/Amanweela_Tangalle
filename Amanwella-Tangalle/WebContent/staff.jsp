<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head> 

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Staff Management</title>

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="salary/css/admin.css">
<link rel="stylesheet" href="salary/css/nav.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});
</script>


<meta charset="ISO-8859-1">

</head>

<body style="background-color:#f2f2f2;">


<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="staff_atten">Attendance</a>
  <a href="staff_sal">Salary</a>
  <a href="staff_lea">Leaves</a>
  <a href="report.jsp">Reports</a>
</div>

<div id="main">

  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>
</div>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "200px";
  document.getElementById("main").style.marginLeft = "200px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>

 <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Manage <b>STAFF MEMBERS</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="registration.jsp" class="btn btn-success" > <span>Add New Member</span></a>
						<a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
					</div>
                </div>
            </div>
            
            
            <table  id="myTable" class="table table-striped table-hover">
                <thead>
                    <tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
                        <th>First Name</th>
                        <th>Last Name</th>
						<th>Email</th>
                        <th>Phone</th>
                        <th>Address</th>
                        <th>DOB</th>
                        <th>Gender</th>
                        <th>Position</th>
                        <th>TOW</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>  
                  	<c:forEach items="${list}" var="staff">
								<tr>
									<td></td>
									<td><c:out value="${staff.first_name}"/></td>
									<td><c:out value="${staff.last_name}"/></td>
									<td><c:out value="${staff.email}"/></td>
									<td><c:out value="${staff.mobile}"/></td>
									<td><c:out value="${staff.address}"/></td>
									<td><c:out value="${staff.dob}"/></td>
									<td><c:out value="${staff.gender}"/></td>
									<td><c:out value="${staff.position}"/></td>
									<td><c:out value="${staff.tow}"/></td>
									
									<td><a href="${pageContext.request.contextPath}/edit_staff_sevlet?id=${staff.id}" class="edit"data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i> </a>
 									<a onclick="alert('Are you sure want to Delete ?')" href="${pageContext.request.contextPath}/delete_staff_sevlet?id=${staff.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>									
								</tr>
					</c:forEach>
                </tbody>
            </table>
			
        </div>
    </div>
</body>

<script>

$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
</html>
