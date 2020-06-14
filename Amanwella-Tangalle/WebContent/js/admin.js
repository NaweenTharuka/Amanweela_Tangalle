$(document).ready(function() {
  //$('.ui.dropdown').dropdown();
  $('.sidebar-menu-toggler').on('click', function() {
    var target = $(this).data('target');
    $(target)
      .sidebar({
        dinPage: true,
        transition: 'overlay',
        mobileTransition: 'overlay'
      })
      .sidebar('toggle');
  });
  
  
  if(window.showalert){
	  if(window.showalert == "save")
		  swal ('WELCOME', 'SUCCESSFULLY SAVED')
		  else if(window.showalert == "delete")
			  swal ('WELCOME', 'SUCCESSFULLY DELETED')
		else if(window.showalert == "edit")
			swal ('WELCOME', 'SUCCESSFULLY UPDATED')
		else if(window.showalert == "totalalert")
			swal ('SUCCESS', 'DELIVERY IS ADDED. TOTAL IS: ' + window.totalalert)
  }
});
