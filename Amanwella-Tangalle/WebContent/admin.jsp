<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>FrontendFunn - Semantic UI - Sample Admin Dashboard Template</title>

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css"
      integrity="sha256-9mbkOfVho3ZPXfM7W8sV2SndrGDuh7wuyLjtsWeTI1Q="
      crossorigin="anonymous"
    />

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"
      integrity="sha256-+N4/V/SbAFiW1MPBCXnfnP9QSN3+Keu+NlB+0ev/YKQ="
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/admin.css" />
  </head>

  <body style="background-image: url('images/IMG_9825.JPG');
			background-repeat: no-repeat;
  			background-attachment: fixed;
  			height: 500px; 
  			background-position: center; 
 			background-repeat: no-repeat; 
  			background-size: cover;">
  
  	<%
	  	String email = (String)session.getAttribute("email");
		
		if(email == null) {
			response.sendRedirect("admin_login.jsp");
		}
  	%>

    <jsp:include page="admin_nav.jsp"></jsp:include>

    <div class="pusher">
      <div class="main-content">
        <div class="ui grid stackable padded">
          <!-- <div
            class="four wide computer eight wide tablet sixteen wide mobile column"
          >
            <div class="ui fluid card">
              <div class="content">
                <div class="ui right floated header red">
                  <i class="fas fa-people-carry"></i>
                </div>
                <div class="header">
                  <div class="ui red header">
                  </div>
                </div>
                <div class="meta">
                </div>
                <div class="description">
                </div>
              </div>
              <div class="extra content">
                <div class="ui two buttons">
                  <a href="supplier_index.jsp"><div class="ui red button">Supplier Management</div></a>
                </div>
              </div>
            </div>
          </div> -->
          <!-- <div
            class="four wide computer eight wide tablet sixteen wide mobile column"
          >
            <div class="ui fluid card">
              <div class="content">
                <div class="ui right floated header red">
                  <i class="fas fa-people-carry"></i>
                </div>
                <div class="header">
                  <div class="ui red header">
                  </div>
                </div>
                <div class="meta">
                </div>
                <div class="description">
                </div>
              </div>
              <div class="extra content">
                <div class="ui two buttons">
                 <a href="staff_servlet"><div class="ui green button">Staff Management</div></a>
                </div>
              </div>
            </div>
          </div> -->
          <!-- <div
            class="four wide computer eight wide tablet sixteen wide mobile column"
          >
            <div class="ui fluid card">
              <div class="content">
                <div class="ui right floated header red">
                  <i class="fas fa-people-carry"></i>
                </div>
                <div class="header">
                  <div class="ui red header">
                  </div>
                </div>
                <div class="meta">
                </div>
                <div class="description">
                </div>
              </div>
              <div class="extra content">
                <div class="ui two buttons">
                  <a href="supplier_index.jsp"><div class="ui red button">Supplier Management</div></a>
                </div>
              </div>
            </div>
          </div> -->
          <div
            class="four wide computer eight wide tablet sixteen wide mobile column"
          >
            <div class="ui fluid card">
              <div class="content">
                <div class="ui right floated header teal">
                  <i class="icon briefcase"></i>
                </div>
                <div class="header">
                 
                </div>
                <div class="meta">
                  
                </div>
                <div class="description">
                  
                </div>
              </div>
              <div class="extra content">
                <div class="ui two buttons">
                  <a href="supplier_index.jsp"><div class="ui red button" style="color:white;">Supplier Management</div></a>
                </div>
              </div>
            </div>
          </div>
          <div
            class="four wide computer eight wide tablet sixteen wide mobile column"
          >
            <div class="ui fluid card">
              <div class="content">
                <div class="ui right floated header teal">
                  <i class="icon briefcase"></i>
                </div>
                <div class="header">
                 
                </div>
                <div class="meta">
                  
                </div>
                <div class="description">
                  
                </div>
              </div>
              <div class="extra content">
                <div class="ui two buttons">
                  <a href="staff_servlet"><div class="ui green button">Staff Management</div></a>
                </div>
              </div>
            </div>
          </div>
          <div
            class="four wide computer eight wide tablet sixteen wide mobile column"
          >
            <div class="ui fluid card">
              <div class="content">
                <div class="ui right floated header teal">
                  <i class="icon briefcase"></i>
                </div>
                <div class="header">
                 
                </div>
                <div class="meta">
                  
                </div>
                <div class="description">
                  
                </div>
              </div>
              <div class="extra content">
                <div class="ui two buttons">
                 <a href="event_list"><div class="ui teal button">Event Management</div>
                </div>
              </div>
            </div>
          </div>
		  
		  <div
            class="four wide computer eight wide tablet sixteen wide mobile column"
          >
            <div class="ui fluid card">
              <div class="content">
                <div class="ui right floated header green">
                  <i class="icon clock"></i>
                </div>
                <div class="header">
                  
                </div>
                <div class="meta">
                  
                </div>
                <div class="description">
                 
                </div>
              </div>
              <div class="extra content">
                <div class="ui two buttons">
                  <a href="contact_us"><div class="ui green button">Customer Feedback Management</div></a>
                </div>
              </div>
            </div>
          </div>
		  
		  <div
            class="four wide computer eight wide tablet sixteen wide mobile column"
          >
            <div class="ui fluid card">
              <div class="content">
                <div class="ui right floated header red">
                  <i class="icon shopping cart"></i>
                </div>
                <div class="header">
                  <div class="ui red header">
                    
                  </div>
                </div>
                <div class="meta">
                  
                </div>
                <div class="description">
                  
                </div>
              </div>
              <div class="extra content">
                <div class="ui two buttons">
                  <div class="ui two buttons" style="color:white;">
                  <a href="res_sevlet"><div class="ui red button" >Room Reservation Management</div></a>
                </div>
                </div>
              </div>
            </div>
          </div>
		  
		  
		  <div
            class="four wide computer eight wide tablet sixteen wide mobile column"
          >
            <div class="ui fluid card">
              <div class="content">
                <div class="ui right floated header green">
                  <i class="icon clock"></i>
                </div>
                <div class="header">
                  
                </div>
                <div class="meta">
                  
                </div>
                <div class="description">
                  
                </div>
              </div>
              <div class="extra content">
                <div class="ui two buttons">
                  <a href="inventory_count"><div class="ui green button">Inventory Management</div></a>
                </div>
              </div>
            </div>
          </div>
		  <div
            class="four wide computer eight wide tablet sixteen wide mobile column"
          >
            <div class="ui fluid card">
              <div class="content">
                <div class="ui right floated header teal">
                  <i class="icon briefcase"></i>
                </div>
                <div class="header">
                  
                </div>
                <div class="meta">
                  
                </div>
                <div class="description">
                  
                </div>
              </div>
              <div class="extra content">
                <div class="ui two buttons">
                  <div class="ui teal button">Transport Management</div>
                </div>
              </div>
            </div>
          </div>
          <div
            class="four wide computer eight wide tablet sixteen wide mobile column"
          >
            <div class="ui fluid card">
              <div class="content">
                <div class="ui right floated header purple">
                  <i class="icon trophy"></i>
                </div>
                <div class="header">
                  
                </div>
                <div class="meta">
                  
                </div>
                <div class="description">
                  
                </div>
              </div>
              <div class="extra content">
                <div class="ui two buttons">
                  <div class="ui purple button">Restaurant Management</div>
                </div>
              </div>
            </div>
          </div>
        </div>
		
        
      </div>
    </div>

    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
      integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"
      integrity="sha256-t8GepnyPmw9t+foMh3mKNvcorqNHamSKtKRxxpUEgFI="
      crossorigin="anonymous"
    ></script>
    <script src="./js/admin.js"></script>
  </body>
</html>
