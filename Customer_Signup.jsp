<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Signup Page</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous"> 

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="css/Customer_signup.css">
</head>
<body>
	<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h4>Customer Signup</h4>
				<!--<div class="d-flex justify-content-end social_icon"> 
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>-->
			</div>
			<div class="card-body">
				<form action="CustomerSignupServlet" method="post">

					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" id="custs_name" name="custs_name" class="form-control" placeholder="Name">
						
					</div>
					
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-id-card"></i></span>
						</div>
						<input type="text" id="custs_user" name="custs_user" class="form-control" placeholder="Username">
						
					</div>
					
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" id="custs_pass" name="custs_pass" class="form-control" placeholder="Password">
					</div>
					
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user-lock"></i></span>
						</div>
						<input type="password" id="custs_cpass" name="custs_cpass" class="form-control" placeholder="Confirm password">
					</div>
					
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-address-book"></i></span>
						</div>
						
						<input type="number" id="custs_cno" name="custs_cno" class="form-control" placeholder="Contact No.">
					</div>
					
					<br>
					
					<div class="form-group">
						<button type="submit" id="custs_submit" name="custs_submit" action="CustomerSignupServlet" class="btn signup_btn">Signup</button>
					    <input type="Reset" value="Cancel"  class="btn cancel_btn">
					</div>
					<br>
				<div class="card-footer">
						<div class="d-flex justify-content-center links">
							Already a member? <a href="index.jsp">Login</a>
						</div>
				</div>
				
				</form>
			</div>
			
		</div>
	</div>
</div>
</body>
</html>