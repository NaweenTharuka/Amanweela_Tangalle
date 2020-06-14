<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<html lang="en-US"  class="supernova">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="alternate" type="application/json+oembed" href="https://www.jotform.com/oembed/?format=json&amp;url=https%3A%2F%2Fform.jotform.com%2F200525738939464" title="oEmbed Form">
<link rel="alternate" type="text/xml+oembed" href="https://www.jotform.com/oembed/?format=xml&amp;url=https%3A%2F%2Fform.jotform.com%2F200525738939464" title="oEmbed Form">
<meta property="og:title" content="Employee Attendence" >
<meta property="og:url" content="https://form.jotform.com/200525738939464" >
<meta property="og:description" content="Please click the link to complete this form.">
<meta name="slack-app-id" content="AHNMASS8M">
<link rel="stylesheet" href="css/attendance.css">
<link rel="canonical" href="https://form.jotform.com/200525738939464" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=1" />
<meta name="HandheldFriendly" content="true" />

<title>Staff Attendance</title>     

<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.15591" rel="stylesheet" type="text/css" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.15591" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.15591" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/54b929a4700cc4f2408b4567.css?themeRevisionID=593f74f5cf3bfe299e341221"/>
<link type="text/css" rel="stylesheet" href="salary/css/attendance.css" />
<link type="text/css" id="form-designer-style" rel="stylesheet" href="salary/css/attendenceform.css" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/buttons/form-submit-button-simple_black.css?3.3.15591"/>

<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>




</head>
<body>
<form class="jotform-form" action="attendance_servlet" method="post"  name="form_200525738939464" id="200525738939464" accept-charset="utf-8" autocomplete="on">
  <input type="hidden" name="formID" value="200525738939464" />
  <input type="hidden" id="JWTContainer" value="" />
  <input type="hidden" id="cardinalOrderNumber" value="" />
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-default">
          <div class="header-text httal htvam">
            <h2 id="header_1" class="form-header" data-component="header">
             Staff Attendance
            </h2>
          </div>
        </div>
      </li>
      
      <li class="form-line" data-type="control_dropdown" id="id_18">
      	<label class="form-label form-label-left form-label-auto" id="label_18" for="input_18">Date</label>
			<div id="cid_18" class="form-input">
				<input type="date" name="date"  data-type="input-textbox" class="form-textbox" size="20" value="${attendance.date}" data-component="textbox" aria-labelledby="label_18"  />
			</div>
	  </li>

      <li class="form-line" data-type="control_dropdown" id="id_6">
        <label class="form-label form-label-left form-label-auto" id="label_6" for="input_6"> Member ID </label>
        <div id="cid_6" class="form-input">
          <select class="form-dropdown" id="input_6" name="staffid" style="width:150px" data-component="dropdown" aria-labelledby="label_6">
            <option value="Option 1"></option>
            <c:forEach items="${list}" var="staff">
            	
           		<option value="${staff.id}">${staff.id}  </option>
			</c:forEach>
          </select>
        </div>
      </li>
      

      
      <li class="form-line form-line-column form-col-1" data-type="control_time" id="id_4">
        <label class="form-label form-label-top" id="label_4" for="input_4_hourSelect"> In Time </label>
        <div id="cid_4" class="form-input-wide">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container " style="vertical-align:top">
              <input type="time" id="intime" name="intime" required value="" data-type="input-textbox" class="form-textbox" size="25" value="" placeholder=" " data-component="textbox" aria-labelledby="label_3" />
               
            </span>
          </div>
        </div>
      </li>
      
      <li class="form-line form-line-column form-col-2" data-type="control_time" id="id_5">
        <label class="form-label form-label-top" id="label_5" for="input_5_hourSelect"> Out Time </label>
        <div id="cid_5" class="form-input-wide">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container " style="vertical-align:top">
              <input type="time" id="outtime"  name="outtime" onchange ="timecal();" required value="" data-type="input-textbox" class="form-textbox" size="25" value="" placeholder=" " data-component="textbox" aria-labelledby="label_3" />
            </span>
          </div>
        </div>
      </li>
      
      <input type="hidden" id="whours" name="whours" required value="" data-type="input-textbox" class="form-textbox" size="25" value="" placeholder=" " data-component="textbox" aria-labelledby="label_3" />
       <input type="hidden" id="ehours" name="ehours" required value="" data-type="input-textbox" class="form-textbox" size="25" value="" placeholder=" " data-component="textbox" aria-labelledby="label_3" />
      <li class="form-line form-line-column form-col-1 form-line-column-clear" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide">
          <div style="text-align:center" data-align="center" class="form-buttons-wrapper ">
            <button id="input_2" type="submit" class="form-submit-button form-submit-button-simple_black" data-component="button" data-content="">
              Submit
            </button>
            <span>
               
            </span>
            <button id="input_reset_2" type="reset" class="form-submit-reset form-submit-button-simple_black" data-component="button">
              Clear Form
            </button>
          </div>
        </div>
      </li>
      
      <li style="clear:both">
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
      
    </ul>
  </div>



</form>

<script>
var totalin=0;
var hourin=0;
var minuten=0;


var totalout=0;
var hourout=0;
var minuteout=0;
var total =0;
var extrahr =0;
function timecal(){
	
	
	var intime = document.getElementById("intime").value;
	var outtime= document.getElementById("outtime").value;
	
	var splitTime1= intime.split(':');
    var splitTime2= outtime.split(':');
    
  	hourin = parseInt(splitTime1[0]);
    minuten = parseInt(splitTime1[1]);
    hourin = hourin + minuten/60;
    minuten = minuten%60;
   
   
    hourout = parseInt(splitTime2[0]);
    minuteout = parseInt(splitTime2[1]);
    hourout = hourout + minuteout/60;
    minuteout = minuteout%60;
   
    //var splitTime3= splitTime1.split(',');
	totalin = hourin+minuten;
	totalout = hourout+minuteout;
	
	total = totalout-totalin;
	extrahr = total-8;
	
	if(extrahr > 0){
		document.getElementById("ehours").value = extrahr;
	}else{
		document.getElementById("ehours").value = 0;
	}
	document.getElementById("whours").value = total;
	//alert(totalin);
	//alert(totalout);
}	
	</script>
</body>
</html>
