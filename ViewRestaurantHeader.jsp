<%@page import="java.io.File"%>
<%@page import="model.Model"%>
<%@page import="dao.Dao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/tablestyle.css">
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
<!-- //animation-effect -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" language="javascript">    
javascript:window.history.forward(1);
</script>
</head>

<body>

<form action="ViewRestaurantHeader.jsp" method="post">  
<!-- header -->
	<div class="header-top">
		<div class="container">
			<div class="header-top-left animated wow slideInLeft" data-wow-delay=".5s">
				<p></p>
			</div>
			
			<div class="header-top-right">
				<div id="loginContainer login"><a href="#" id="loginButton"><span>Sign Out</span></a>					
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
						<li><a href="AddRestaurant.jsp">Add Restaurant</a></li>
						<li class="active"><a href="ViewRestaurant.jsp">View Restaurant</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="contact.html">Contact Us</a></li>
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
				<div class="container_table">
					<table>
						<thead>
							<tr>
								<th>Name </th>
								<th>Username</th>
								<th>Area</th>
								<th>Contact_No</th>	
								<th>Action</th>							
							</tr>
						</thead>
						<tbody>
						<%								
								Model m =new Model();
								ResultSet rs = Dao.login(m,"select name,username,area,contact_no from restaurant"); 
								while(rs.next())
								{
								String name= rs.getString("name");
								String username= rs.getString("username");
								String area= rs.getString("area");
								String contact_no= rs.getString("contact_no");
								
							%>
					      
					            <tr>					           
					              <td><%=name%></td>
					              <td><%=username%></td>
					              <td><%=area%></td>
					              <td><%=contact_no%></td>
					              <td><a href="RemoveRestaurant.jsp?username=<%=username %>" class="btn btn-danger" role="button">Delete</a></td>					              
					            </tr>
					            <%
					
								}
							
								 %>
            
						</tbody>
					</table>
				</div> 
				
			</div>
			
			</div>
		</div>							
<!-- //banner -->
</form>
</body>
<jsp:include page="ViewRestaurantFooter.jsp"></jsp:include>
</html>