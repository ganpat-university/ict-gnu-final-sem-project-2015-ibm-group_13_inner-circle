<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>
<!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrapadmin.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- login-pop-up -->
<script src="js/menu_jquery.js"></script>
<!-- //login-pop-up -->
<!-- animation-effect -->
<link href="css/animate.minadmin.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
<script
type="text/javascript" language="javascript">    
javascript:window.history.forward(1);
</script>

<%  
response.setHeader("Pragma","no-cache");  
response.setHeader("Cache-Control","no-store");  
response.setHeader("Expires","0");  
response.setDateHeader("Expires",-1);  
%>

</head>
	
<body>
<!-- header -->
<form action="AddRestaurantServlet" method="post">
	<div class="header-top">
		<div class="container">
			<div class="header-top-left animated wow slideInLeft" data-wow-delay=".5s">
				<p></p>
			</div>
			
			<div class="header-top-right">
				<div id="loginContainer login"><a href="index.jsp"><span>Sign Out</span></a>					
				</div>
			</div>
			<div class="header-top-left">
			<div class="header-top-right">				
				<div id="loginContainer login"><a href="#" id="loginButton"><span>Welcome <%=session.getAttribute("auname")%></span></a>						
				</div>
			</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="header-nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
					<div class="logo animated wow slideInLeft" data-wow-delay=".5s">
						<a class="navbar-brand" href="AdminDashboard.jsp">Inner Circle <span>Admin Panel</span></a>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="AdminDashboard.jsp">Home</a></li>
						<li class="active"><a href="AddRestaurant.jsp">Add Restaurant</a></li>
						<li><a href="ViewRestaurant.jsp">View/Edit Restaurant</a></li>						
					</ul>									
				</div><!-- /.navbar-collapse -->	
				
			</nav>
		</div>
	</div>
<!-- //header -->
<!-- banner -->

	<div class="banner">
		<div class="banner-pos banner1">
			<div class="container">
				<div class="banner-info animated wow slideInUp" data-wow-delay=".5s">
					<h4>
						<b>Add</b> <span>Restaurant</span>
					</h4>					
				</div>
			</div>
			<div class="banner-posit animated wow zoomIn" data-wow-delay=".5s">
				<h2><span aria-hidden="true"></span>Add Restaurant</h2>
				<div class="reservation">
					 <h5>Name</h5>
					<div class="book_date">
						<div class="input-group-prepend">
							<span><i class="fas fa-user"></i></span>
						</div>
							<input id="addrest_name" name="addrest_name" type="text" required="">

					</div>	
					 <h5>Username</h5>
					 <!----------start section_room----------->
					 <div class="book_date">
						<div class="input-group-prepend">
							<span><i class="fas fa-id-card""></i></span>
						</div>
							
							<input id="addrest_uname" name="addrest_uname" type="text" required="">

					 </div>
					 <h5>Password</h5>
					 <!----------start section_room----------->
					 <div class="book_date">
						<div class="input-group-prepend">
							<span><i class="fas fa-key""></i></span>
						</div>							
							<input id="addrest_pass" name="addrest_pass" type="password"  required="">

					 </div>
					 <h5>Confirm Password</h5>
					 <!----------start section_room----------->
					 <div class="book_date">
						<div class="input-group-prepend">
							<span><i class="fas fa-lock"></i></span>
						</div>							
							<input id="addrest_cpass" name="addrest_cpass" type="password"  required="">

					 </div>
					<h5>Area</h5>
					 <!----------start section_room----------->
					 <div class="book_date">
						<div class="input-group-prepend">
							<span><i class="fas fa-home"></i></span>
						</div>							
							<input id="addrest_area" name="addrest_area" type="text"  required="">

					 </div>
					 <h5>Latitude</h5>
					 <!----------start section_room----------->
					 <div class="book_date">
						<div class="input-group-prepend">
							<span><i class="fas fa-location-arrow"></i></span>
						</div>							
							<input id="addrest_lat" name="addrest_lat" step=".0001" type="number" required="">

					 </div>
					 <h5>Longitude</h5>
					 <!----------start section_room----------->
					 <div class="book_date">
						<div class="input-group-prepend">
							<span><i class="fas fa-location-arrow"></i></span>
						</div>
							<input id="addrest_long" name="addrest_long" step=".0001" type="number" required="">
						
					 </div>
					 <h5>Contact No.</h5>
					 <!----------start section_room----------->
					 <div class="book_date">
						<div class="input-group-prepend">
							<span><i class="fas fa-address-book"></i></span>
						</div>							
							<input id="addrest_conno" name="addrest_conno" type="number"  required="">							
						
					 </div>
					 <div class="book">
						<button type="submit" id="addrest_submit" name="addrest_submit" action="AddRestaurantServlet" class="btn signup_btn">Add Restaurant</button> 							
												 
					 </div>
				</div>
			</div>
		</div>	
	</div>

<jsp:include page="AdminFooter.jsp"></jsp:include>
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</form>
</body>

</body>

</html>