<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food_Template Bootstrap Responsive Website Template | order page :: w3layouts</title>
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
<!--webfont-->
<!-- <link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lobster+Two:400,400italic,700,700italic' rel='stylesheet' type='text/css'>-->
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
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
 $(window).load(function(){
      $('.slider')._TMS({
              show:0,
              pauseOnHover:false,
              prevBu:'.prev',
              nextBu:'.next',
              playBu:false,
              duration:800,
              preset:'fade', 
              pagination:true,//'.pagination',true,'<ul></ul>'
              pagNums:false,
              slideshow:8000,
              numStatus:false,
              banners:false,
          waitBannerAnimation:false,
        progressBar:false
      })  
      });
      
     $(window).load (
    function(){$('.carousel1').carouFredSel({auto: false,prev: '.prev',next: '.next', width: 960, items: {
      visible : {min: 1,
       max: 4
},
height: 'auto',
 width: 240,

    }, responsive: false, 
    
    scroll: 1, 
    
    mousewheel: false,
    
    swipe: {onMouse: false, onTouch: false}});
    
    
    });      

     </script>
<script src="js/jquery.easydropdown.js"></script>
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
						<li><form action="RestaurantMapServlet" method="post">
							<input type="hidden" id="lat" name="lat"> 
							<input type="hidden" id="long" name="long">
							<input type="submit" value="NearBy Restaurant" id="showRest">
						</form></li>|
						<li><a href="Cust_Restaurant.jsp">Popular Restaurants</a></li>|
						<li class="active"><a href="Cust_Order.jsp">Order</a></li>|
						<li><a href="Cust_Contact.jsp">contact</a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="login-section">
					<ul>
						<li><a href="Customer_login.jsp">Sign Out</a>  </li> 
						
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</div>
	<!-- header-section-ends -->
	<div class="order-section-page">
		<div class="ordering-form">
			<div class="container">
			<div class="order-form-head text-center wow bounceInLeft" data-wow-delay="0.4s">
						<h3>Restaurant Order Form</h3>
						<p>Ordering Food Was Never So Simple !!!!!!</p>
					</div>
				<div class="col-md-6 order-form-grids">
					
					<div class="order-form-grid  wow fadeInLeft" data-wow-delay="0.4s">
						<h5>Order Information</h5>
								<span>Type of Order</span>
								 <div class="dropdown-button">           			
            			<select class="dropdown" tabindex="9" data-settings='{"wrapperClass":"flat"}'>
            			<option value="0">Pick up</option>	
						<option value="1">Delivery</option>
						<option value="2">Catering</option>
					  </select>
					</div>
		              <span>Restaurant Location</span>
					   <div class="dropdown-button wow">           			
            			<select class="dropdown" tabindex="9" data-settings='{"wrapperClass":"flat"}'>
            			<option value="0">Select Restaurant..</option>	
						<option value="1">Kailash Parbhat,5 Dev Aurum Anand Nagar Road </option>	
						<option value="2">Barbeque Nation,Caspia Hotel, 100 Feet Road Beside Venus Atlantis</option>
						<option value="3">@Mango, Sindhu Bhavan Road, PRL Colony</option>
						<option value="4">Kaboose, 101, First Floor Elite Business Hub </option>
						<option value="5">Sankalp, 11 Dev Aurum Ananad Nagar Rd Beside Freezeland</option>
						<option value="6">Evening Post, 111 Shivalik Yash Complex 132 Feet Ring Road</option>
						<option value="7">Subway, 14-15,Satyamev-2 Complex,Opp.Kargil Petrol Pump</option>
					  </select> 
					</div>
					<span>Location name</span>
								 <div class="dropdown-button">           			
            			<select class="dropdown" tabindex="9" data-settings='{"wrapperClass":"flat"}'>
            			<option value="0" select="selected">Ahmedabad</option>	
					  </select>
					</div>
					<div class="wow swing animated" data-wow-delay= "0.4s">
					<input type="button" value="order now" onclick="window.location.href='cartTemp.jsp'">
					</div>
					</div>
				</div>
				<div class="col-md-6 ordering-image wow bounceIn" data-wow-delay="0.4s">
					<img src="images/order.jpg" class="img-responsive" alt="" />
				</div>
			</div>
		</div>
<div class="special-offers-section">
			<div class="container">
				<div class="special-offers-section-head text-center dotted-line">
					<h4>Special Offers</h4>
				</div>
				<div class="special-offers-section-grids">
				 <div class="m_3"><span class="middle-dotted-line"> </span> </div>
				   <div class="container">
					   <ul id="flexiselDemo3">
						<li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/p1.jpg" class="img-responsive" alt=""/>
								</div>
								<div class="offer-text">
									<h4>Tasty 10</h4>
									<p>Get 10% off on your total bill amount</p>									
									<span></span>
								</div>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/p2.jpg" class="img-responsive" alt=""/>
								</div>
								<div class="offer-text">
									<h4>PAYTM15</h4>
									<p>Earn 15% discount on bill if paid through PAYTM</p>
									
									<span></span>
								</div>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/p3.jpg" class="img-responsive" alt=""/>
								</div>
								<div class="offer-text">
									<h4>Healthy 100</h4>
									<p>Earn 100/- in coupons on bill over 500</p>
									
									<span></span>
								</div>
								
								<div class="clearfix"></div>
								</div>
						</li>
						<li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/p4.jpg" class="img-responsive" alt=""/>
								</div>
								<div class="offer-text">
									<h4>Sweet 20</h4>
									<p>Enjoy each sweet dish at 20% off on MRP.</p>
									
									<span></span>
								</div>
								
								<div class="clearfix"></div>
								</div>
					    </li>
					    <li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/p5.jpg" class="img-responsive" alt=""/>
								</div>
								<div class="offer-text">
									<h4>Debit 20</h4>
									<p>Enjoy 20% discount on bill if paid through Debit Card</p>
									
									<span></span>
								</div>
								
								<div class="clearfix"></div>
								</div>
					    </li>
					    <li>
							<div class="offer">
								<div class="offer-image">	
									<img src="images/p6.jpg" class="img-responsive" alt=""/>
								</div>
								<div class="offer-text">
									<h4>Paytm25</h4>
									<p>Earn 25% discount on bill if paid through PAYTM.</p>
									
									<span></span>
								</div>
								
								<div class="clearfix"></div>
								</div>
					    </li>
					 </ul>
				 <script type="text/javascript">
					$(window).load(function() {
						
						$("#flexiselDemo3").flexisel({
							visibleItems: 3,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
							responsiveBreakpoints: { 
								portrait: { 
									changePoint:480,
									visibleItems: 1
								}, 
								landscape: { 
									changePoint:640,
									visibleItems: 2
								},
								tablet: { 
									changePoint:768,
									visibleItems: 3
								}
							}
						});
						
					});
				    </script>
				    <script type="text/javascript" src="js/jquery.flexisel.js"></script>
				</div>
			</div>
		</div>
		</div>
	</div>
	<!-- footer-section-starts -->
	<div class="footer">
		<div class="container">
			<p class="wow fadeInLeft" data-wow-delay="0.4s">&copy; 2014  All rights  Reserved | Template by &nbsp;<a href="http://w3layouts.com" target="target_blank">W3Layouts</a></p>
		</div>
	</div>
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