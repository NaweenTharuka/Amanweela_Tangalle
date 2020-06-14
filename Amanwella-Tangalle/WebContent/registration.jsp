<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta property="og:title" content="Online Staff Registration Form" >
<meta property="og:url" content="https://form.jotform.com/200525715673454" >
<meta property="og:description" content="Please click the link to complete this form.">
<meta name="slack-app-id" content="AHNMASS8M">


<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=1" />
<meta name="HandheldFriendly" content="true" />
<title> Staff Registration Form</title>


<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.15591" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.15591" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.15591" />
<link rel="stylesheet" href="css/reg.css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet"/>


<script src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.min.js"></script>
<script src="https://cdn.jotfor.ms/js/vendor/imageinfo.js?v=3.3.15591" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.15591" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("form").submit(function(){
    alert("Staff Member Successfully Add to the System...");
  });
});
</script>






</head>

<body style="background-color:#f2f2f2;">




<form class="jotform-form" action="<%=application.getContextPath() %>/staff_servlet" method="post"  name="form_200525715673454"   id="200525715673454" accept-charset="utf-8" autocomplete="on" >
  <input type="hidden" name="formID" value="200525715673454" />
  <input type="hidden" id="JWTContainer" value="" />
  <input type="hidden" id="cardinalOrderNumber" value="" />
  <input type="hidden" id="id" value="${staff.id}" />
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_20" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-default">
          <div class="header-text httal htvam">
            <h2 id="header_20" class="form-header" data-component="header">
               Staff Registration
            </h2>
          </div>
        </div>
      </li>
      
      
       <li class="form-line" data-type="control_textbox" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3"> First Name </label>
        <div id="cid_3" class="form-input">
          <input type="text" class="form-control" id="input_3" name="fname" required  value="${staff.first_name}" data-type="input-textbox" class="form-textbox" size="20"  data-component="textbox" aria-labelledby="label_3" style="width: 250px " />
          
        </div>
      </li>
      
       <li class="form-line" data-type="control_textbox" id="id_3">
        <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3"> Last Name </label>
        <div id="cid_3" class="form-input">
          <input type="text" id="input_3" name="lname" required value="${staff.last_name}" data-type="input-textbox" class="form-textbox" size="25" value="" placeholder=" " data-component="textbox" aria-labelledby="label_3" style="width: 250px " />
        </div>
      </li>
    
      <li class="form-line" data-type="control_email" id="id_7">
        <label class="form-label form-label-left" id="label_7" for="input_7"> Email Address: </label>
        <div id="cid_7" class="form-input">
          <input type="email" id="input_7" name="email"  value="${staff.email}" pattern="[a-z0-9]+@[a-z0-9]+\.[a-z]{2,}$" required class="form-textbox validate[Email]" size="32" value="" placeholder="ex: myname@example.com" data-component="email" aria-labelledby="label_7" style="width: 250px " />
        </div>
      </li>
      
      <li class="form-line" data-type="control_textbox" id="id_18">
        <label class="form-label form-label-left form-label-auto" id="label_18" for="input_18"> Contact Number: </label>
        <div id="cid_18" class="form-input">
          <input type="tel" id="input_18" name="mobile" maxlength="10" onkeypress="return onlyNumberKey(event)" required value="${staff.mobile}" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder=" " data-component="textbox" aria-labelledby="label_18" style="width: 250px " />
        </div>
      </li>
      
      <li class="form-line" data-type="control_address" id="id_19">
        <label class="form-label form-label-left form-label-auto" id="label_19" for="input_19undefined"> Address </label>
        <div id="cid_19" class="form-input">
        	 <input type="text" id="input_19_addr_line1" name="address" required value="${staff.address}"  class="form-textbox form-address-line" value="" data-component="address_line_1" aria-labelledby="label_19 sublabel_19_addr_line1" style="width: 250px " />
        </div>
       </li>


        <li class="form-line" data-type="control_textbox" id="id_18">
        	<label class="form-label form-label-left form-label-auto" id="label_18" for="input_18">Date Of Birth </label>
        		<div id="cid_18" class="form-input">
           			<input type="date" id="input_18" name="dob" required value="${staff.dob}" data-type="input-textbox" class="form-textbox" size="20" value="" placeholder= "Enter Date of Birth" data-component="textbox" aria-labelledby="label_18 " style="width: 250px " />
        		</div>
        </li>
        
       <li class="form-line" data-type="control_dropdown" id="id_23">
        	<label class="form-label form-label-left" id="label_23" for="input_11"> Gender </label>
        		<div id="cid_11" class="form-input">
          			<select class="form-dropdown" id="input_23" name="gender" required style="width:150px" data-component="dropdown" aria-labelledby="label_11">
            			<option value="Male"> Male </option>
            			<option value="Female"> Female </option>
          			</select>
        		</div>
      </li>
       
      <li class="form-line" data-type="control_textbox" id="id_21">
        <label class="form-label form-label-left form-label-auto" id="label_21" for="input_21"> Applying For Position: </label>
        <div id="cid_21" class="form-input">
          <input type="text" id="input_21" name="position" value="${staff.position}" required data-type="input-textbox" class="form-textbox" size="30" value="" placeholder=" " data-component="textbox" aria-labelledby="label_21" style="width: 250px " />
        </div>
      </li>
      <li class="form-line" data-type="control_dropdown" id="id_11">
        <label class="form-label form-label-left" id="label_11" for="input_11"> Type Of Work </label>
        <div id="cid_11" class="form-input">
          <select class="form-dropdown" id="input_11" name="tow" required style="width:150px" data-component="dropdown" aria-labelledby="label_11">
            <option value="Permanent"> Permanent </option>
            <option value="Temporary"> Temporary </option>
          </select>
        </div>
      </li>
      
      
      <li class="form-line" data-type="control_button" id="id_1">
        <div id="cid_1" class="form-input-wide">
          <div style="margin-left:156px" data-align="auto" class="buttonstaff ">
            <input type="hidden" value="${staff.id}" name="id">
							<div class="add_staff_btn">
								<button type="submit" name="submitbtn" class="btn btn-primary">ADD STAFF</button>
							</div>
          </div>
        </div>
      </li>
      
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
      
    </ul>
  </div>



</form>
</body>
<script> 
    function onlyNumberKey(evt) { 
          
        // Only ASCII charactar in that range allowed 
        var ASCIICode = (evt.which) ? evt.which : evt.keyCode 
        if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57)) 
            return false; 
        return true; 
    } 
</script> 
</html>