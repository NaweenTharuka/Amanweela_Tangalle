<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Service</title>



<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>

<style>
 body{
  font-family: 'Nunito';
  background-image:url(Contactus/images/bgpic.jpg);
  background-size:cover;
  background-attachment:fixed;
}
</style>
<body>
		<br/><br/><br/><a href="FeedbackPdf.jsp" class="btn btn-primary" style="margin-left: 600px">Get report of all feedback</a> <br/><br/> <a href="#" class="btn btn-primary" style="margin-left: 600px">Reply via Email</a><br/><br/><br/>
    	<table class="table table-dark" >
						<thead>
								<tr>
							      <th scope="col">ID</th>
							      <th scope="col">Name</th>
							      <th scope="col">E-Mail</th>
							      <th scope="col">Phone</th>
							      <th scope="col">Country</th>
							      <th scope="col">Message</th>
							      <th scope="col">Delete</th>
							    </tr>
						</thead>
						<tbody>
								<c:forEach items="${list}" var="list">
								<tr>
									<td><c:out value="${list.id}"/></td>
									<td><c:out value="${list.name}"/></td>
									<td><c:out value="${list.email}"/></td>
									<td><c:out value="${list.phone}"/></td>
									<td><c:out value="${list.country}"/></td>
									<td><c:out value="${list.message}"/></td>
									<td><a href="${pageContext.request.contextPath}/contactusDelete?id=${list.id}"><button type="submit" name="btn" class="btn btn-danger">Delete</button></a>  
									</td>
								</tr>
							    </c:forEach>
						</tbody>
		</table>
</body>
</html>