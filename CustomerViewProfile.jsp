<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>     
 <%@ page import="java.io.IOException" %>
    <%@ page import="java.sql.*" %>
     <%@ page import="model.Model" %>  
 <%@ page import="dao.Dao" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food_Template Bootstrap Responsive Website Template | Contact :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/cart.css" rel="stylesheet" type="text/css" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont
<link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lobster+Two:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--Animation-->
<script src="js/wow.min.js"></script>
<link href="css/animate.css" rel='stylesheet' type='text/css' />
<link href="css/showRestaurant.css" rel='stylesheet' type='text/css' />
<script>
	new WOW().init();
</script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
<script src="js/simpleCart.min.js"> </script>	
<style type="text/css">
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
/*   border: none; */
/*   border-bottom: 2px solid red; */
  border: 2px solid #4CAF50;
}
.couponbtn,.paybtn{
	
	background-color: #4CAF50; 
  border: none;
  color: green;
  padding: 4px 8px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 2px 1px;
  -webkit-transition-duration: 0.4s; 
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius:10px;
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}
.couponbtn:hover,.paybtn:hover {
  background-color: #4CAF50;
  color: white;
}
</style>
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
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <!-- header-section-starts -->
	<div class="header">
		<div class="container">
			<div class="top-header">
				<div class="logo">
					<a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt="" /></a>
				</div>
				<div class="queries">
					<p>Questions? Call us Toll-free!<span>+91-9898940711 </span><label>(11AM to 11PM)</label></p>
				</div>
				<div class="header-right">
						<div class="cart box_1">
							<jsp:useBean id="cart" scope="session" class="com.example.CartBean" />
							<c:choose>
								  <c:when test="${cart.lineItemCount==0}">
								    	<h3> &#8377;&nbsp;0.0 (0 items)<img src="images/bag.png" alt=""></h3>
								  </c:when>
								  <c:otherwise>
										<h3> &#8377;&nbsp;<c:out value="${cart.orderTotal}"/> (<c:out value="${cart.lineItemCount}"/> items)<img src="images/bag.png" alt=""></h3>	    
								  </c:otherwise>
							</c:choose>
							
							</a>
							 <form name="item" method="POST" action="CartController">
								 <p><input type="submit" name="action" value="Empty Cart" class="delall"></p>
							 </form>
							<div class="clearfix"> </div>
						</div>
					</div>
				<div class="clearfix"></div>
			</div>
		</div>
			<div class="menu-bar">
			<div class="container">
				<div class="top-menu">
					<ul>
						<li><a href="CustomerDashboard.jsp">Home</a></li>|
						<li><form action="RestaurantMapServlet" method="post">
							<input type="hidden" id="lat" name="lat"> 
							<input type="hidden" id="long" name="long">
							<input type="submit" value="NearBy Restaurant" id="showRest">
						</form></li>|
						<li><a href="Cust_Restaurant.jsp">Popular Restaurants</a></li>|
<!-- 						<li><a href="Cust_Order.jsp">Order</a></li>| -->
						<li><a href="Cust_Contact.jsp">Contact</a></li>|
						<li class="active"><a href="CustomerViewProfile.jsp">View Profile</a></li>
						
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="login-section">
					<ul>
						<li><a href="index.jsp">Sign Out</a>  </li> 
						
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	<!-- header-section-ends -->
	<div class="contact-section-page">
		<div class="contact-head">
		    <div class="container">
				<h3>Profile</h3>
				<p>Home/Profile</p>
			</div>
		</div>
		
		<% 
				
				String name=session.getAttribute("cname").toString();
		//out.println("Cname::"+name);
				String uname="";				
				String contact_no="";
				String loyaltypoint="";
				Model m=new Model();
				String loginquery="Select * from customer_profile where username='"+name+"'";
				ResultSet rs=Dao.login(m,loginquery);
				//out.println("rs::"+rs);
				if(rs.next()){
					
					uname=rs.getString("USERNAME");					
					contact_no=rs.getString("CONTACT_NO");
					loyaltypoint=rs.getString("LOYALTY_POINT");
					//String offer1_discount="null";
					if(loyaltypoint==null){
						loyaltypoint="0";
						}
				}	
			//	out.println("LoyaltyPoint::"+loyaltypoint);
			
			
		
		%>
		
		<div class="contact_top">
			 		<div class="container">
			 			<div class="col-md-8 contact_left wow fadeInRight" data-wow-delay="0.4s">
			 				<h4>My Profile</h4>
			 				<p></p>
							  <form action="SaveProfileServlet" method="get">
								 <div >
					        &nbsp;&nbsp;      Name: <input type="text" class="text" name="name" value="<%=name %>" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=name %>';}"><br/><br/>
					        &nbsp;&nbsp;      Username: <input type="text" class="text" name="uname" value="<%=uname %>" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=uname %>';}"><br/><br/>					        
							&nbsp;&nbsp;Contact No:  <input type="text" class="text" name="contact_no" value="<%=contact_no %>" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=contact_no %>';}"><br/><br/>
							
							&nbsp;&nbsp;Loyalty Point:  <input type="text" class="text" name="loyalty_point" value="<%=loyaltypoint %>"  readonly><br/><br/>
									 
									 <div class="clearfix"> </div>
									 <div class="sub-button wow swing animated" data-wow-delay= "0.4s">
									 	<input name="submit" type="submit" class="couponbtn" value="Save Profile">
									 </div>
						          </div>
						       </form>
					        </div>
					      </div>
					</div>

	</div>
	<!-- footer-section-starts -->
	
	<!-- footer-section-ends -->
	  <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>