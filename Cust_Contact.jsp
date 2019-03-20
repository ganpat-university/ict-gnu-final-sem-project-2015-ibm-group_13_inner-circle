<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food_Template Bootstrap Responsive Website Template | Contact :: w3layouts</title>
<!-- <link href="css/bootstrap.css" rel='stylesheet' type='text/css' /> -->
<link href="css/custDashBoot.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/cart.css" rel="stylesheet" type="text/css" />
<link href="css/showRestaurant.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont
<link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lobster+Two:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--Animation-->
<script src="js/wow.min.js"></script>
<link href="css/animate.css" rel='stylesheet' type='text/css' />
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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script src="js/myLocation.js"> </script>			
<script src="js/simpleCart.min.js"> </script>	
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
		</div><span><b>Welcome <%=session.getAttribute("cname")%></b></span>
			<div class="menu-bar">
			<div class="container">
				<div class="top-menu">
					<ul>
						<li><a href="CustomerDashboard.jsp">Home</a></li>|
						<li class="active"><form action="RestaurantMapServlet" method="post">
							<input type="hidden" id="lat" name="lat"> 
							<input type="hidden" id="long" name="long">
							<input type="submit" value="NearBy Restaurant" id="showRest">
						</form></li>|
						<li><a href="Cust_Restaurant.jsp">Popular Restaurants</a></li>|
<!-- 						<li><a href="Cust_Order.jsp">Order</a></li>| -->
						<li class="active"><a href="#contact" class="scroll">Contact</a></li>|
						<li><a href="CustomerViewProfile.jsp">View Profile</a></li>
						<div class="clearfix"></div>
					</ul>
				</div>		
					<div class="login-section">
					<ul>
						<li><a href="index.jsp">Sign Out</a>  </li> |
						
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>		
				</div>

	<!-- header-section-ends -->
	<div class="contact-section-page">
		<div class="contact-head">
		    <div class="container">
				<h3>Contact</h3>
				<p>Home/Contact</p>
			</div>
		</div>
		<div class="contact_top">
			 		<div class="container">
			 			<div class="col-md-6 contact_left wow fadeInRight" data-wow-delay="0.4s">
			 				<h4>Contact Form</h4>			 				
							  <form>
								 <div class="form_details">
					                 <input type="text" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
									 <input type="text" class="text" value="Email Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email Address';}">
									 <input type="text" class="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}">
									 <textarea value="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
									 <div class="clearfix"> </div>
									 <div class="sub-button wow swing animated" data-wow-delay= "0.4s">
									 	<input name="submit" type="submit" value="Send message">
									 </div>
						          </div>
						       </form>
					        </div>
					        <div class="col-md-6 company-right wow fadeInLeft" data-wow-delay="0.4s">
					        	<div class="contact-map">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d918.0817663037383!2d72.51127022917052!3d23.011760399059913!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e9b2836121cff%3A0xe725a9b21d499bf8!2sVenus+Infrastructure+%26+Developers+Private+Limited!5e0!3m2!1sen!2sin!4v1549627034148"></iframe>
		</div>
      
	  <div class="company-right">
					        	<div class="company_ad">
							     		<h3>Contact Info</h3>
							     		<span>Inner Circle</span>
			      						<address>
											 <p>Email:<a href="mailto:innercircleinfo247@gmail.com">innercircleinfo247@gmail.com</a></p>
											 <p>Phone:  +91-9898940711</p>
									   		<p>Venus Atlantis,Prahladnagar Road</p>
									   		<p>Ahmedabad, GJ  380015</p>
									 	 	
							   			</address>
							   		</div>
									</div>	
									<div class="follow-us">
										<h3>follow us on</h3>
										<a href="https://www.facebook.com/neegam.circle"><i class="facebook"></i></a>
										<a href="https://twitter.com/InnerCi44440413"><i class="twitter"></i></a>
										<a href="https://plus.google.com/u/5/discover"><i class="google-plus"></i></a>
									</div>
			
							
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