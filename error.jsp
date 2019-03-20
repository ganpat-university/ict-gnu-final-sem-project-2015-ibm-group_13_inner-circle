<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Funding Stack - Error</title>
		<link href="css/error.css" rel="stylesheet" type="text/css"  media="all" />
	</head>
	<%
	String msg=request.getParameter("msg");
	String error="";
	String link="";	
	if(msg.equals("fields"))
	{
		error="Please Enter Details";
		link="index.jsp";
	}
	else if(msg.equals("passcmpcust"))
	{
		error="Password not Match";
		link="Customer_Signup.jsp";		
	}
	else if(msg.equals("passcmprest"))
	{
		error="Password not Match";
		link="AddRestaurant.jsp";		
	}
	else if(msg.equals("wrongad"))
	{
		error="Admin Not found or Invalid Credentials";
		link="Admin_Login.jsp";		
	}
	else if(msg.equals("wrongcust"))
	{
		error="Customer Not found or Invalid Credentials";
		link="Customer_login.jsp";		
	}
	else if(msg.equals("wrongrest"))
	{
		error="Restaurant Not found or Invalid Credentials";
		link="Restaurant_login.jsp";		
	}
	else if(msg.equals("custusernameexist"))
	{
		error="Username Exist";
		link="Customer_Signup.jsp";		
	}
	else if(msg.equals("restusernameexist"))
	{
		error="Username Exist or Name Exist";
		link="AddRestaurant.jsp";		
	}
	else if(msg.equals("custwrongcontact"))
	{
		error="Invalid Contact Details";
		link="Customer_Signup.jsp";		
	}
	else if(msg.equals("restwrongcontact"))
	{
		error="Invalid Contact Details";
		link="AddRestaurant.jsp";		
	}
	else if(msg.equals("restaurantdeletefailed"))
	{
		error="Failed to Delete Restaurant";
		link="ViewRestaurant.jsp";		
	}
	else if(msg.equals("failedtoemail"))
	{
		error="Failed to Subscribe";
		link="index.jsp";		
	}		
	else
	{
		error="Page Not Found";
		link="index.jsp";		
	}
	
	
	
	%>
	<meta http-equiv="refresh" content="7;url=<%=link%>" />
	<body>
		<!--start-wrap--->
		<div class="wrap">
			<!---start-header---->
				<div class="header">
					<div class="logo">
						<h1><a href="#"><%=error %></a></h1>
					</div>
				</div>
			<!---End-header---->
			<!--start-content------>
			<div class="content">
				<img src="images/error-img.png" title="error" />
				<p><span><label>O</label>hh.....</span>You Requested the page that is no longer There.</p>
				<a href="<%= link%>">Continue</a>
				<div class="copy-right">
					<p>&copy; 2018 Ohh. All Rights Reserved | Design by <a href="index.jsp">Inner Circle</a></p>
				</div>
   			</div>
			<!--End-Cotent------>
		</div>
		<!--End-wrap--->
	</body>
</html>



