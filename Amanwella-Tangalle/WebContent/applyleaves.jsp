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
    <title>Leaves Form</title>

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
                    <h2 class="title">Apply Leaves</h2>
                   <a class="btn btn-success active float-right btn-sm" href="leaves_list.jsp" title="View Leaves History" align="right">Leaves History</a>
                </div>
                <div class="card-body">
                    <form method="POST" action="leaves_servlet">
				
					
					
					  <div class="form-row m-b-55">
                            <div class="name">Staff	Id	=</div>
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
                            <div class="col-lg-6">
                                                <h5 class="mt-4 pt-2 text-danger" style="letter-spacing: 3px">You can only apply for 4 leaves per month</h5>
                            </div>
                        </div>
                        
                       
                        <div class="form-row m-b-55">
                            <div class="name">Start Date</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="date" name="sdate" required style="width: 250px ">
                                        </div>
                                    </div>   
                                </div>
                            </div>
                        </div>
                        

                        
                          <div class="form-row m-b-55">
                            <div class="name">End Date</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="date" name="edate" required style="width: 250px ">
                                        </div>
                                    </div>   
                                </div>
                            </div>
                        </div>
					  <div class="form-row m-b-55">
                        	<div class="name">No Of Dates</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="number" name="nleaves" id="nleaves" onchange ="leavescal();" required style="width: 250px ">
                                        </div>
                                    </div>   
                                </div>
                            </div>
                        </div>
 								<input type="hidden" id="rleaves" name="rleaves" required value="" data-type="input-textbox" class="form-textbox" size="25" value="" placeholder=" " data-component="textbox" aria-labelledby="label_3" />

                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit" onclick="alert('Successfully Add to the System...')" >Apply Leave</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>




<script>
var relevess =0;
function leavescal(){
	
	var leavescount = document.getElementById("nleaves").value;
	
	if(leavescount >=5){
		
		alert("bhfdd");
	}else {
		relevess = 4-leavescount;
		document.getElementById("rleaves").value = relevess;
	}
}



</script>