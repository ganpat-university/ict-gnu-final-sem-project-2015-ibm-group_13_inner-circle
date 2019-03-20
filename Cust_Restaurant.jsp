<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food_Template Bootstrap Responsive Website Template | Popular-restaurant :: w3layouts</title>
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
<!-- <link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lobster+Two:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
Animation-->
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
<script src="js/myLocation.js"> </script>
			
<script src="js/simpleCart.min.js"> </script>
<style type="text/css">
a{
cursor:pointer;
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
								<p><input type="hidden" name="action" value="EmptyCart& "><input type="submit" name="addToCart" value="Empty Cart" class="delall"></p>
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
						<li ><a href="CustomerDashboard.jsp">Home</a></li>|
						<li><form action="RestaurantMapServlet" method="post">
							<input type="hidden" id="lat" name="lat"> 
							<input type="hidden" id="long" name="long">
							<input type="submit" value="NearBy Restaurant" id="showRest">
						</form></li>|
						<li class="active"><a href="Cust_Restaurant.jsp">Popular Restaurants</a></li>|
<!-- 						<li><a href="Cust_Order.jsp">Order</a></li>| -->
						<li><a href="Cust_Contact.jsp">Contact</a></li>|
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
	<!-- content-section-starts -->
	<div class="Popular-Restaurants-content">
		<div class="Popular-Restaurants-grids">
			<div class="container">
				<div class="Popular-Restaurants-grid wow fadeInRight" data-wow-delay="0.4s">
					<div class="col-md-3 restaurent-logo">
						<img src="New images/kp.jpg" class="img-responsive" alt="" />
					</div>
					<div class="col-md-2 restaurent-title">
						<div class="logo-title">						
<!-- 							<h4><a href="RestaurantCustomer?rname=Kailash Parbat">Kailash Parbat</a></h4> -->
							<h4><a onclick="callRest('Kailash Parbat')" class="R">Kailash Parbat</a></h4>
						</div>
						<div class="rating">
							<span>ratings</span>
							<a href="#"> <img src="images/star1.png" class="img-responsive" alt="">(004)</a>
						</div>
					</div>
					<div class="col-md-7 buy">
						<span>&#8377;450</span>
						<a class="morebtn hvr-rectangle-in" href="cartTemp3.jsp?name=Kailash Parbat">View Menu</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="Popular-Restaurants-grid wow fadeInLeft" data-wow-delay="0.4s">
					<div class="col-md-3 restaurent-logo">
						<img src="New images/bn.jpg" class="img-responsive" alt="" />
					</div>
					<div class="col-md-2 restaurent-title">
						<div class="logo-title logo-title-1">
							<h4><a onclick="callRest('Barbeque Nation')">Barbeque Nation</a></h4>
						</div>
						<div class="rating">
							<span>ratings</span>
							<a href="#"> <img src="images/star2.png" class="img-responsive" alt="">(005)</a>
						</div>
					</div>
					<div class="col-md-7 buy">
						<span>&#8377;370</span>
						<a class="morebtn hvr-rectangle-in" href="cartTemp1.jsp?name=Barbeque Nation">View Menu</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="Popular-Restaurants-grid wow fadeInRight" data-wow-delay="0.4s">
					<div class="col-md-3 restaurent-logo">
						<img src="New images/amango.jpg" class="img-responsive" alt="" />
					</div>
					<div class="col-md-2 restaurent-title">
						<div class="logo-title logo-title-2">
							<h4><a onclick="callRest('@Mango')">@Mango</a></h4>
						</div>
						<div class="rating">
							<span>ratings</span>
							<a href="#"> <img src="images/star1.png" class="img-responsive" alt="">(004)</a>
						</div>
					</div>
					<div class="col-md-7 buy">
						<span>&#8377;390</span>
						<a class="morebtn hvr-rectangle-in" href="cartTemp2.jsp?name=@Mango">View Menu</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="Popular-Restaurants-grid wow fadeInLeft" data-wow-delay="0.4s">
					<div class="col-md-3 restaurent-logo">
						<img src="New images/kb.jpg" class="img-responsive" alt="" />
					</div>
					<div class="col-md-2 restaurent-title">
						<div class="logo-title logo-title-3">
							<h4><a onclick="callRest('Kaboose')">Kaboose</a></h4>
						</div>
						<div class="rating">
							<span>ratings</span>
							<a href="#"> <img src="images/star2.png" class="img-responsive" alt="">(005)</a>
						</div>
					</div>
					<div class="col-md-7 buy">
						<span>&#8377;490</span>
						<a class="morebtn hvr-rectangle-in" href="cartTemp3.jsp?name=Kaboose">View Menu</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="Popular-Restaurants-grid wow fadeInRight" data-wow-delay="0.4s">
					<div class="col-md-3 restaurent-logo">
						<img src="New images/sp.jpg" class="img-responsive" alt="" />
					</div>
					<div class="col-md-2 restaurent-title">
						<div class="logo-title logo-title-4">
							<h4><a onclick="callRest('Sankalp')">Sankalp</a></h4>
						</div>
						<div class="rating">
							<span>ratings</span>
							<a href="#"> <img src="images/star1.png" class="img-responsive" alt="">(004)</a>
						</div>
					</div>
					<div class="col-md-7 buy">
						<span>&#8377;400</span>
						<a class="morebtn hvr-rectangle-in" href="cartTemp1.jsp?name=Sankalp">View Menu</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="Popular-Restaurants-grid wow fadeInLeft" data-wow-delay="0.4s">
					<div class="col-md-3 restaurent-logo">
						<img src="New images/ep.jpg" class="img-responsive" alt="" />
					</div>
					<div class="col-md-2 restaurent-title">
						<div class="logo-title logo-title-5">
							<h4><a onclick="callRest('Evening Post')">Evening Post</a></h4>
						</div>
						<div class="rating">
							<span>ratings</span>
							<a href="#"> <img src="images/star2.png" class="img-responsive" alt="">(005)</a>
						</div>
					</div>
					<div class="col-md-7 buy">
							<span>&#8377;380</span>
							<a class="morebtn hvr-rectangle-in" href="cartTemp2.jsp?name=Evening Post">View Menu</a>
						</div>
						<div class="clearfix"></div>
						</div>
					<div class="Popular-Restaurants-grid wow fadeInLeft" data-wow-delay="0.4s">
					<div class="col-md-3 restaurent-logo">
						<img src="New images/subway.jpg" class="img-responsive" alt="" />
					</div>
					<div class="col-md-2 restaurent-title">
						<div class="logo-title logo-title-5">
							<h4><a onclick="callRest('Subway')">Subway</a></h4>
						</div>
						<div class="rating">
							<span>ratings</span>
							<a href="#"> <img src="images/star2.png" class="img-responsive" alt="">(004)</a>
						</div>
					</div>
					<div class="col-md-7 buy">
						<span>&#8377;250</span>
						<a class="morebtn hvr-rectangle-in" href="cartTemp3.jsp?name=Subway">View Menu</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="contact-section" id="contact">
			<div class="container">
				<div class="contact-section-grids">
					<div class="col-md-3 contact-section-grid wow fadeInLeft" data-wow-delay="0.4s">
						<h4>Site Links</h4>
						<ul>
							<li><i class="point"></i></li>
							<li class="data"><a href="#">About Us</a></li>
						</ul>
						<ul>
							<li><i class="point"></i></li>
							<li class="data"><a href="#">Contact Us</a></li>
						</ul>
						<ul>
							<li><i class="point"></i></li>
							<li class="data"><a href="#">Privacy Policy</a></li>
						</ul>
						<ul>
							<li><i class="point"></i></li>
							<li class="data"><a href="#">Terms of Use</a></li>
						</ul>
					</div>
					<div class="col-md-3 contact-section-grid wow fadeInRight" data-wow-delay="0.4s">
						<h4>Follow Us On...</h4>
						<ul>
							<li><i class="fb"></i></li>
							<li class="data"> <a href="https://www.facebook.com/neegam.circle">  Facebook</a></li>
						</ul>
						<ul>
							<li><i class="tw"></i></li>
							<li class="data"> <a href="https://twitter.com/InnerCi44440413">Twitter</a></li>
						</ul>
						<ul>
							<li><i class="in"></i></li>
							<li class="data"><a href="https://www.linkedin.com/in/neegam-circle-2567a117a/"> Linkedin</a></li>
						</ul>
						<ul>
							<li><i class="gp"></i></li>
							<li class="data"><a href="https://plus.google.com/u/5/discover">Google Plus</a></li>
						</ul>
					</div>
					<div class="col-md-3 contact-section-grid nth-grid wow fadeInRight" data-wow-delay="0.4s">
						<h4>Subscribe Newsletter</h4>
						<p>To get latest updates and food deals every week</p>
						<input type="text" class="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
						<input type="submit" value="Submit">
						</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	<!-- content-section-ends -->
	<!-- footer-section-starts -->
	
	<!-- footer-section-ends -->
	<script type="text/javascript">
	function callRest(x){		
		location.replace("RestaurantCustomer?rname="+x);
	}
	
	
	
	</script>
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