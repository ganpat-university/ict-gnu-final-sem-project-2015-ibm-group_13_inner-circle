<%@page import="javax.mail.Session"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.io.File"%>
<%@page import="model.Model"%>
<%@page import="dao.Dao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>
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
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<script type="text/javascript" language="javascript">    
var url = window.location.search.substr(1).split("&");
if(url=="msg=restaurantadded")
	{
		alert('Restaurant Added Successfully');
	}	

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
	<div class="header-top">
		<div class="container">
			<div class="header-top-left animated wow slideInLeft" data-wow-delay=".5s">
				<p></p>
			</div>					
			<div class="header-top-right">				
				<div id="loginContainer login"><a href="index.jsp" ><span>Sign Out</span></a>					
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
						<li class="active"><a href="AdminDashboard.jsp">Home</a></li>
						<li><a href="AddRestaurant.jsp">Add Restaurant</a></li>
						<li><a href="ViewRestaurant.jsp">View/Edit Restaurant</a></li>						
					</ul>									
				</div><!-- /.navbar-collapse -->	
				
			</nav>
		</div>
	</div>
<!-- //header -->





<!-- banner -->
	<div class="banner">
		<div class="banner-pos banner2">
			<div class="container">
				<div class="banner-info animated wow slideInUp" data-wow-delay=".5s">
					<h2>
						Welcome To Admin Panel
					</h2>
					
				</div>
			</div>
			
			</div>
		</div>	
	</div>						

<!-- //banner -->


<jsp:include page="AdminFooter.jsp"></jsp:include>
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>