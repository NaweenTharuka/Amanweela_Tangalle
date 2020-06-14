<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head> 

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Attendance Table</title>

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



 <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Attendance <b>List</b></h2>
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
                        <th>Date</th>
                        <th>Staff Id</th>
						<th>In Time</th>
                        <th>Out Time</th>
                        <th>Working Hours</th>
                        <th>Extra Hours</th>
                        
                    </tr>
                </thead>
                <tbody>  
                  	<c:forEach items="${list}" var="list">
								<tr>
									<td></td>
									<td><c:out value="${list.date}"/></td>
									<td><c:out value="${list.staffid}"/></td>
									<td><c:out value="${list.intime}"/></td>
									<td><c:out value="${list.outtime}"/></td>
									<td><c:out value="${list.whours}"/></td>
									<td><c:out value="${list.ehours}"/></td>
										
								</tr>
					</c:forEach>
                </tbody>
            </table>
            <div class="col-sm-6">
						<a href="staff_servlet" class="btn btn-danger" > <span>Back</span></a>
			</div>
        </div>
    </div>
</body>

<script>

$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>

</html>
