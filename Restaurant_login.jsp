<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
     <%@ page import="java.io.IOException" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="model.*" %>
    <%@ page import="dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Restaurant Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous"> 

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="css/Restaurant_login.css">
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


	<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h4>Restaurant Login</h4>
				<!--<div class="d-flex justify-content-end social_icon"> 
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>-->
			</div>
			<div class="card-body">
				<form action="RestaurantLoginServlet" method="post">
													
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" id="rest_user" name="rest_user" class="form-control" placeholder="Username">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" id="rest_pass" name="rest_pass" class="form-control" placeholder="Password">
					</div>				
					<br>
					<div class="form-group">
						<center><button type="submit" id="rest_submit" name="rest_submit" action="RestaurantLoginServlet" class="btn login_btn">Login</button></center>
					</div>
					<br>
					
					<div class="form-group">
					<center><a href="#">Forgot your password?</a></center>
					</div>
				
				</form>
			</div>
				
				
		</div>
	</div>
</div>
</body>
</html>