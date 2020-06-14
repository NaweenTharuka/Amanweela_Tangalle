<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <!-- Title Page-->
    <title>Add Salary Form</title>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	
    <!-- Main CSS-->
    <link href="salary/css/salary.css" rel="stylesheet" media="all">
    

    
</head>

<body>
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Salary</h2>
                </div>
                <div class="card-body">
                    <form method="POST" action="salary_servlet">
				
					
					
					  <div class="form-row m-b-55">
                            <div class="name">Staff Id		=</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
											<select class="form-dropdown" name="memid" style="width: 250px "  >
												<option value="Option 1"></option>
												<c:forEach items="${list}" var="staff">
           										<option value="${staff.id}">${staff.id}  </option>
												</c:forEach>
											</select>
                                        </div>
                                    </div>   
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row m-b-55">
                            <div class="name">Month		=</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="month" name="month" required style="width: 250px ">
                                        </div>
                                    </div>   
                                </div>
                            </div>
                        </div>
					
                        <div class="form-row m-b-55">
                            <div class="name">Basic Salary		=</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="number" name="bsalary" required style="width: 250px ">
                                        </div>
                                    </div>   
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Transport	=</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="transport" required style="width: 250px ">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Allowance		=</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="allowance" required style="width: 250px ">
                                </div>
                            </div>
                        </div>
                          <div class="form-row">
                            <div class="name">OT		=</div>
                            <div class="value">
                                <div class="input-group">
                                <h5 class="mt-4 pt-2 text-danger" style="letter-spacing: 3px">Extra Hours * 80</h5>
                                    <input class="input--style-5" type="number" name="ot" required style="width: 250px ">
                                </div>
                            </div>
                        </div>
                       
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit" onclick="alert('Successfully Add to the System...')">ADD</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>