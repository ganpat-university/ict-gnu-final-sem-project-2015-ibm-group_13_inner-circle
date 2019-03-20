<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food_Template Bootstrap Responsive Website Template | Ordered-Lists :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/buttonStyle.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/cart.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->

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
			jQuery(document).ready(function( ) {
				 $(".scroll").click(function(event){		
					event.preventDefault();
					 ('html,body').animate({scrollTop: (this.hash).offset().top},1200);
				});
			});
		</script>		
<script src="js/simpleCart.min.js"> </script>	
<style>

.cartadd{
	float:left;
	margin-top:-43px;
	margin-left:150px;

  background-color: #4CAF50; 
  border: none;
  color: green;
  padding: 3px 6px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
/*   margin: 2px 1px; */
  -webkit-transition-duration: 0.4s; 
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius:10px;
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.cartadd:hover{
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
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <!-- header-section-starts -->
	<div class="header">
		<div class="container">
			<div class="top-header">
				<div class="logo">
					<a href="index.jsp"><img src="images/logo.png" class="img-responsive" alt="" /></a>
				</div>
				<div class="queries">
					<p>Questions? Call us Toll-free!<span>1800-0000-7777 </span><label>(11AM to 11PM)</label></p>
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
								 <p><input type="hidden" name="action" value="EmptyCart&3"><input type="submit" name="addToCart" value="Empty Cart" class="delall"></p>
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
						<li ><a href="CustomerDashboard.jsp">Home</a></li>|
<!-- 						<li class="active"><a href="Cust_Restaurant.jsp">Popular Restaurants</a></li>| -->
						<li class="active" id="disablePopRest"><a onclick="popRest()">Popular Restaurants</a></li>|
<!-- 						<li><a href="Cust_Order.jsp">Order</a></li>| -->
						<li><a href="Cust_Contact.jsp">Contact</a></li>|
						<li><a href="CustomerViewProfile.jsp">View Profile</a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<script>
				function popRest(){
					
					console.log("Inside popRest()");
					var total='<c:out value="${cart.orderTotal}"/>';
					if(total==0){
						location.replace("Cust_Restaurant.jsp");
					}else{
						alert("Empty your Cart!");
						 document.getElementById("disablePopRest").style.cursor = "not-allowed";
						 document.getElementById("disablePopRest").disabled = "true";
					}
				}
				</script>
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
	<div class="orders">
	<div class="container">
		

		&nbsp;&nbsp;&nbsp;<a href="checkoutTemp.jsp">
   <button class="viewCartbtn">View Cart</button>
</a></p>
<div class="cart-items">
		<div class="order-top">
			<li class="item-lists"><h4>Menu</h4>
				<P>Sweet Corn Soup</P><br/>
				<p>Cheese Butter Masala</p><br/>
				<P>Butter Naan</P><br/>
				<P>Exotic Sundae</p>
			</li>
			<li class="item-lists">
				<div class="special-info grid_1 simpleCart_shelfItem">
					<h4>Price</h4>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add" style="margin-top: 6px;"><span class="item_price"><h5><b>&#8377;270.00</b></h5></span></div>
						</div>
						<div class="pr-right">
							<form name="modelDetail1" method="POST" action="CartController"> 
								<input type="hidden" name="modelNo" value="Sweet Corn Soup">
								<div class="item_add" style="margin-top: -6px;"><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity</strong>:</font> <input type="number" min="1" max="100" size="2" value="1" name="quantity"><span class="item_price"><input type="hidden" name="price" value="270"></p><input type="hidden" name="action" value="add&3"><input type="submit" name="addToCart" value="Add To Cart" class="cartadd" ></span></div>
							</form>
						</div>
							<div class="clearfix"></div>
					</div>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add" style="margin-top: 26px;"><span class="item_price"><h5><b>&#8377;350.00</b></h5></span></div>
						</div>
						<div class="pr-right">
							<form name="modelDetail1" method="POST" action="CartController">
								<input type="hidden" name="modelNo" value="Cheese Butter Masala">
								<div class="item_add" style="margin-top: 16px;"><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity</strong>:</font> <input type="number" min="1" max="100" size="2" value="1" name="quantity"><span class="item_price"><input type="hidden" name="price" value="350"></p><input type="hidden" name="action" value="add&3"><input type="submit" name="addToCart" value="Add To Cart" class="cartadd"></span></div>
							</form>	
						</div>
							<div class="clearfix"></div>
					</div>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add" style="margin-top: 26px;"><span class="item_price"><h5><b>&#8377;90.00</b></h5></span></div>
						</div>
						<div class="pr-right">
							<form name="modelDetail1" method="POST" action="CartController">
								<input type="hidden" name="modelNo" value="Butter Naan">
								<div class="item_add" style="margin-top: 16px;"><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity</strong>:</font> <input type="number" min="1" max="100" size="2" value="1" name="quantity"><span class="item_price"><input type="hidden" name="price" value="90"></p><input type="hidden" name="action" value="add&3"><input type="submit" name="addToCart" value="Add To Cart" class="cartadd"></span></div>
							</form>	
						</div>
							<div class="clearfix"></div>
					</div>
					<div class="pre-top">
						<div class="pr-left">
							<div class="item_add" style="margin-top: 26px;"><span class="item_price"><h5><b>&#8377;270.00</b></h5></span></div>
						</div>
						<div class="pr-right">
							<form name="modelDetail1" method="POST" action="CartController">
								<input type="hidden" name="modelNo" value="Exotic Sundae">
								<div class="item_add" style="margin-top: 16px;"><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity</strong>:</font> <input type="number" min="1" max="100" size="2" value="1" name="quantity"><span class="item_price"><input type="hidden" name="price" value="270"></p><input type="hidden" name="action" value="add&3"><input type="submit" name="addToCart" value="Add To Cart" class="cartadd"></span></div>
							</form>
						</div>
							<div class="clearfix"></div>
					</div>
					</div>
				</li>	
			<div class="clearfix"></div>
		</div>
		<br />
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
	<%
	String rrt_name="";
	if(request.getParameter("name")!=null)
	{
		rrt_name = request.getParameter("name");
	
	}
	else
	{
		rrt_name = session.getAttribute("rest_name").toString();
	}
	session.setAttribute("rest2_name", rrt_name);
	//out.println(rrt_name);
	%>
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