<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <!-- Title Page-->
    <title>Salary Form</title>

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
                    <form method="POST" >
                    
                   
                                       
                             
                         <div class="form-row m-b-55">
                            <div class="name">Staff Id		</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="bsalary" style="width: 250px " value="${salary.staffid}">
                                        </div>
                                    </div>   
                                </div>
                            </div>
                        </div>
                             
                                      
                        	<div class="form-row">
                            <div class="name">Month		</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="bsalary" style="width: 250px " value="${salary.month}">
                                        </div>
                                    </div>   
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Basic Salary	=</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="transport" style="width: 250px " value="${salary.bsalary}">
                                </div>
                            </div>
                        </div>
                      
                        
                          <div class="form-row">
                            <div class="name">Transport		=</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="transport" style="width: 250px " value="${salary.transport}">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Allowance		=</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="allowense" style="width: 250px " value="${salary.allowance}">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">OT		=</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="ot" style="width: 250px " value="${salary.ot}">
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Total Salary		=</div>
                            <div class="value">
                                <div class="row row-refine">
                                    <div class="col-9">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="tsalary" style="width: 250px " value="${total_salary}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    	<div>
                			<a href="${pageContext.request.contextPath}/salary_servlet?id=${salary.id}"><button class="btn btn--radius-2 btn--red" >Back</button></a>
                        </div> 
                </div>
            </div>
        </div>
    </div>
</body>
</html>