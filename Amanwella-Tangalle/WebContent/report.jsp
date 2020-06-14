<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reports</title>
<link rel="stylesheet" href="salary/css/report.css">


</head>
<body style="background-color:#f2f2f2;">
</br>
<div>
	<h2 align="center">Reports</h2>
</div>

<div class="row">
	<div align="center" class="container">
	<img src="img/staffr.jpg"  style="width:100%">
		<a href="StaffReport.jsp" type="submit"class="btn" onclick="alert('Report Genarate Successfully..')">Staff Report</a>
	</div>
	<div  align="center" class="container">
	<img src="img/salaryr.jpg"  style="width:100%">
		<a href="salaryReport.jsp" type="submit"class="btn" onclick="alert('Report Genarate Successfully..')">Salary Report</a>
	</div>
	
	<div align="center" class="container">
	<img src="img/attendancer.jpg"  style="width:100%">
		<a href="AttendanceReport.jsp" type="submit"class="btn" onclick="alert('Report Genarate Successfully..')">Attendance Report</a>
	</div>
</div>
	
	
</body>
</html>