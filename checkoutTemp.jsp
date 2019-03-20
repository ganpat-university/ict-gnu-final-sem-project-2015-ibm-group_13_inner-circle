<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="model.Model" %>  
 <%@ page import="dao.Dao" %>
 <%@ page import="java.io.IOException" %>
    <%@ page import="java.sql.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food_Template Bootstrap Responsive Website Template | order page :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/buttonStyle.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/tableStyleBill.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/cart.css" rel="stylesheet" type="text/css"  />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<!--webfont-->
<!-- <link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lobster+Two:400,400italic,700,700italic' rel='stylesheet' type='text/css'>-->
<!--Animation-->
<script src="js/wow.min.js"></script>
<link href="css/animate.css" rel='stylesheet' type='text/css' />
<script>
	new WOW().init();
</script>
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
<style type="text/css">

.paybtn{
	float:right;
	padding:4px 6px;
	margin:4px 6px;
	}
#earnLoyaltyPointbtn{
	float:left;
	padding:4px 16px;
	margin-left:-30px;
}
#addStat{
	float:left;
	padding:4px 6px;
	margin-left:3px;
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
* {
  box-sizing: border-box;
}

.column {
  margin-top:-15px;
  float: left;
  width: 13%;
  padding: 5px;
  
}
.column2 {
  float: left;
  width: 15%;
  padding: 5px;
  
}
.column3 {
  margin-top:-15px;
  float: left;
  width: 15%;
  padding: 3px;
  margin-left: -35px;  
}
.column4 {
  margin-top:-15px;
  float: left;  
  padding: 3px;
  margin-left: 530px; 
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
// 			$(document).ready(function($) {
// 				$(".scroll").click(function(event){		
// 					event.preventDefault();
// 					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
// 				});
// 			});
		</script>
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
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

</head><body onkeydown="return (event.keyCode != 116)">


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
						</div>
					</div>
				<div class="clearfix"></div>
			</div>
		</div><span><b>Welcome <%=session.getAttribute("cname")%></b></span>
			<div class="menu-bar">
			<div class="container">
				<div class="top-menu">
					<ul>
						<li ><a href="CustomerDashboard.jsp" class="scroll">Home</a></li>|
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
						<li><a href="index.jsp">Sign Out</a>  </li> 
						
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>		
				</div>


	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<!-- checkout -->
	<br><br>
	
	
<!-- 		<button class="buttom goBack" >Go Back</button> -->
<%

if(session.getAttribute("id")!=null)
{
	String id2=session.getAttribute("id").toString();
	session.setAttribute("id2",id2);
	session.setAttribute("id3",id2);
	//out.println("ID3333333333::"+id2);
}	
String page3=request.getHeader("Referer");
if(page3.contains("cartTemp"))
{
	session.setAttribute("goBack", page3);
}

%>	
		<%
// 		out.println("Id"+session.getAttribute("id"));
// 				out.println("Id2:::"+session.getAttribute("id2"));
// 						out.println("Id3:::"+session.getAttribute("id3"));
 						//out.println("Page::::"+request.getHeader("Referer"));
		%>
<!-- 		<form name="item" method="POST" action="CartController"> -->
<%--  				<input type="hidden" name="action" value="<%if(session.getAttribute("id")!=null){%><%="Back&"+session.getAttribute("id")%><%}else if(session.getAttribute("id2")!=null){%><%="Back&"+session.getAttribute("id2")%><%}else{%><%="Back&"+session.getAttribute("id3")%><%}%>"/><input type="submit" value="Go Back" class="buttom goBack"/> --%>
<!--  				<input type="submit" onclick="goBack()" value="Go Back" class="buttom goBack"/> -->
 				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 				<button class="buttom goBack" onclick="goBack()">Go Back</button>
<!-- 		</form> -->
 
 <script type="text/javascript">
 
 function goBack(){
	 var page="";	 
	page="<%if(session.getAttribute("goBack")!=null){%><%=session.getAttribute("goBack")%><%}else{%><%=session.getAttribute("back")%><%}%>";
	// page=page.slice(-13);
	location.replace(page);
 }
 
 </script>
							
							 
</a></p>
<div class="cart-items">
	<div >
			<table >
  <tr >
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Item</font></strong></td>
      <td></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Quantity</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Unit
      Price</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Total</font></strong></td>
  </tr>
<%--   <jsp:useBean id="cart" scope="session" class="com.example.CartBean" /> --%>
  <c:if test="${cart.lineItemCount==0}">
  <tr>
  <td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Cart is currently empty -<br/>
  </tr>
  </c:if>
  <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
  <form name="item" method="POST" action="CartController">
  <tr>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${cartItem.partNumber}"/></b><br/>
      <td>  
      
      
		<input type="submit" name="action" value="Update"  class="up"> 
<!-- 			<input type="hidden" name="action" value="Update& "><input type="submit" name="addToCart" value="Update" class="up"> -->
<!-- 			<input type="hidden" name="actiondel" value="Delete& "><input type="submit" name="addToCart" value="Delete" class="del"> -->
 		 <input type="submit" name="action" value="Delete" class="del">
	
 <br/>         </td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'><input type='number' name="quantity" min="1" max="100" value='<c:out value="${cartItem.quantity}"/>' size='2'></font></td>
   
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">&#8377;<c:out value="${cartItem.unitCost}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">&#8377;<c:out value="${cartItem.totalCost}"/></font></td>
<!--     <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><input type="submit" name="action" value="Delete Item" class="deleteItem"></font></td> -->
  </tr>
  </form>
  </c:forEach>
  <tr>
    <td colspan="3"> </td>
    <td> </td>
    <td>
    	<font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subtotal: &#8377;<input type="hidden" name="orderTotal" id="orderTotal" value='<c:out value="${cart.orderTotal}"/>'><c:out value="${cart.orderTotal}"/></div>
    	<br><div class="space" id="discount" name="discount"></div>
    		<c:set value="100" var="di"  scope="session"/>
    	<br><div class="space" id="redeem_point" name="redeem_Point"></div>
    	<br><div class="space" id="finalamt" name="finalamt"></div>
    	</font>
    </td>
  </tr>
</table> 
<style>
/* .space{ */
/* padding-left:-5px; */
/* } */
</style>
<%-- <c:set var="disc" scope="session" value="test1" /> --%>

<%-- <input type="hidden" value="<c:out value='${disc}'/>" name="disco" /> --%>


<%-- <%out.println(session.getAttribute("rest2_name")); %> --%>
<br/><br/><br/>

<div class="row">
          <div class="column">
            
           <b>&nbsp;&nbsp; SELECT COUPON:</b>
          </div>
          <div class="column">

			<div class="input-group form-group" >
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-utensils"></i></span>
						</div>
						<select class="form-control" id="couponName" name="couponName" >
						<option value="null" >Select offer</option>						
						<%
						String name = session.getAttribute("rest3_name").toString();
							try{
								Model m=new  Model();
								String selectquery=("select OFFER1_NAME,OFFER2_NAME,OFFER3_NAME,OFFER1_DISCOUNT,OFFER2_DISCOUNT,OFFER3_DISCOUNT from RESTAURANT where Name='"+name+"'");					
								ResultSet rs=Dao.login(m,selectquery);			
								  								
								while(rs.next())
								{																	
									out.print("<option value="+rs.getString(4)+">"+rs.getString(1)+"</option>");
									out.print("<option value="+rs.getString(5)+">"+rs.getString(2)+"</option>");
									out.print("<option value="+rs.getString(6)+">"+rs.getString(3)+"</option>");
								}
							}
							catch(Exception e)
							{
								e.printStackTrace();
								
							} %>																								 																																
						</select>						
					</div>	
					
					
          </div>
          <div class="column3">
          	<c:choose>
				  <c:when test="${cart.lineItemCount==0}">
					<button onclick="getDiscount()" id="applycouponbtn" class="couponbtn" >Apply Coupon</button>
				    <script type="text/javascript">				    
				     	document.getElementById("applycouponbtn").style.cursor = "not-allowed";
				 		document.getElementById("applycouponbtn").disabled = "true";				    
				    </script>
				  </c:when>
				  
				  <c:otherwise>
					<button onclick="getDiscount()" id="applycouponbtn" class="couponbtn" >Apply Coupon</button>
				  </c:otherwise>
				</c:choose>          		          						
          </div>
		<div class="column4">
			<c:choose>
			  <c:when test="${cart.lineItemCount==0}">
			    <input type="button"  value="Pay Bill" class="paybtn" id="paybtn" onclick="sendValue();" />
			    <script type="text/javascript">
			    
			//     document.getElementById("paybtn").style.cursor = "not-allowed";
			// 	document.getElementById("paybtn").disabled = "true";
			    </script>
			  </c:when>
			  
			  <c:otherwise>
			    <input type="button"  value="Pay Bill" class="paybtn" onclick="sendValue();" />
			  </c:otherwise>
			</c:choose>
					
		</div>
</div>




<!-- <form action="payBill.jsp" method="get"> -->
<!-- <p id="printHere"></p> -->
<!-- <p id="printValue"></p> -->
<!-- <input type="submit"  value="Pay Bill" class="paybtn"  /> -->
<!-- </form>		 -->
<!-- <p id="printHere"></p> -->
<!-- <p id="printValue"></p>				 -->
<!-- <input type="button"  value="Pay Bill" class="paybtn" onclick="window.location.href='payBill.jsp'" /> -->
<p id="printDiscount"></p>
<p id="printTotal"></p>
<p id="printValue"></p>
<p id="printRedeem"></p>

<div class="row">
          <div class="column2">
            
           <b>&nbsp;&nbsp; PAYBACK POINTS:</b>
          </div>
          <div class="column2">
				<c:choose>
				  <c:when test="${cart.lineItemCount==0}">
				    <button onclick="earnPoint();" class="paybtn" id="earnLoyaltyPointbtn">Earn</button>
					<button class="paybtn" id="addStat">Redeem</button>
				    <script type="text/javascript">
				    
				    document.getElementById("earnLoyaltyPointbtn").style.cursor = "not-allowed";
				 	document.getElementById("earnLoyaltyPointbtn").disabled = "true";
				    document.getElementById("addStat").style.cursor = "not-allowed";
				 	document.getElementById("addStat").disabled = "true";
				 	
				    </script>
				  </c:when>
				  
				  <c:otherwise>
					<button onclick="earnPoint();" class="paybtn" id="earnLoyaltyPointbtn">Earn</button>
					<button class="paybtn" id="addStat">Redeem</button>
				  </c:otherwise>
				</c:choose>
			</div>
</div>
<script>
if (performance.navigation.type == 1) {
    console.info( "This page is reloaded" );
    
    document.getElementById("earnLoyaltyPointbtn").style.cursor = "not-allowed";
 	document.getElementById("earnLoyaltyPointbtn").disabled = "true";
    document.getElementById("addStat").style.cursor = "not-allowed";
 	document.getElementById("addStat").disabled = "true";
  } else {
    console.info( "This page is not reloaded");
  }
</script>
			<% 
				String loyaltypoint="";
				String namel=session.getAttribute("cname").toString();
				//out.println(namel);
				Model m=new Model();
				String loginquery="Select loyalty_point from customer_profile where username='"+namel+"'";
				ResultSet rs=Dao.login(m,loginquery);
				while(rs.next()){
					loyaltypoint=rs.getString(1);
					//out.println(loyaltypoint);
					//String offer1_discount="null";
					if(loyaltypoint==null){
						loyaltypoint="0";
 					}
				}	
				//out.println("LoyaltyPoint::"+loyaltypoint);
					
					
				
			%>		

<div id="myModal" class="modal">

              <!-- Modal content -->
                    <div class="modal-content">
                       <div class="modal-header">
                       
                          <h2 style="float:left;">You have <%=loyaltypoint %> Loyalty points</h2>
                          <i id="close" style="font-size:12px;float:left;padding-left:800px;" class="fa">&#xf00d;</i>
                          
                       </div>
                       
                       <div class="modal-body">
                          Enter Points to Redeem:-<input type='number' min="1" max="<%=loyaltypoint%>" onkeypress="javascript:return isNumber(event)" id="point"><br>

                       </div>
                       <script>
    					// WRITE THE VALIDATION SCRIPT.
    					function isNumber(evt) {
						        var iKeyCode = (evt.which) ? evt.which : evt.keyCode
						        if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
						            return false;
						
						        return true;
						    }    
						</script>
                       <div class="modal-footer">
                          <button id="go" >Redeem</button>      
                       </div>
                    </div>

</div>
<style type="text/css">
#close{cursor: pointer;}
</style>
<script>// Get the modal
function disableEarnRedeem(){
	document.getElementById("earnLoyaltyPointbtn").style.cursor = "not-allowed";
	document.getElementById("earnLoyaltyPointbtn").disabled = "true";
	document.getElementById("addStat").style.cursor = "not-allowed";
	document.getElementById("addStat").disabled = "true";
}
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("addStat");

// Get the button that add data
var add = document.getElementById("go");
// Get the <span> element that closes the modal
// var cls = document.getElementsByClassName("close")[0];

var cls = document.getElementById("close");


// When the user clicks the button, open the modal 
btn.onclick = function() {
  
  var loyalty_point=<%=loyaltypoint%>;
  if(loyalty_point==0){
		alert('You can not Redeem \n You Have 0 Loyalty points.');
		btn.style.cursor = "not-allowed";
		btn.disabled = "true";
		modal.style.display = "none";
	}else{
		modal.style.display = "block";
	}
}
// When the user clicks on <span> (x), close the modal
cls.onclick = function() {
  modal.style.display = "none";
}
add.onclick = function() {
var total='<c:out value="${cart.orderTotal}"/>';
var redeemPoint = document.getElementById("point").value;
var loyalty_point=<%=loyaltypoint%>;
var substring = '.';

if(redeemPoint>0 && redeemPoint<=loyalty_point && redeemPoint.indexOf(substring)==-1 && redeemPoint<=total)
{
	
		var discount=0;
		discount=document.getElementById("discounthidden").value;
		//alert("Discount:"+discount);
		var total='<c:out value="${cart.orderTotal}"/>';
		var payamt=total-redeemPoint-discount;		
		loyalty_point=loyalty_point-redeemPoint;		
		alert('After redeemption Pay amount:'+payamt);
		alert('Your Loyalty Point bal:'+loyalty_point);		
		$.ajax({
			url : 'EarnServlet',
			data : {
				point : loyalty_point
			},
			success : function(responseText) {
				//alert("Done");
			},
			error: function(jqXHR, textStatus, errorThrown){  
				
				alert('textStatus:'+textStatus);
			}
		});
		disableEarnRedeem();

		document.getElementById("redeem_point").innerHTML="&nbsp;&nbsp;Points  : - &#8377;"+redeemPoint;
		document.getElementById("discount").innerHTML="Discount:- &#8377;"+discount;
		document.getElementById("finalamt").innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;<b>Total:  &#8377;"+payamt+"</b>";		    
		document.getElementById("printRedeem").innerHTML ="<input type=\"hidden\" id=\"redeemhidden\" value=\""+redeemPoint+"\">";
		modal.style.display = "none";
}
else 
{
	alert('Please Enter Valid Points');	
}
//location.replace("EarnServlet?point="+point);
//setTimeout(function(){ location.reload(true); }, 2000);

}
// window.onclick = function(event) {
// 	  if (event.target == modal) {
// 	    modal.style.display = "none";
// 	  }
// }


function earnPoint(){
	var total='<c:out value="${cart.orderTotal}"/>';
	var loyalty_point=<%=loyaltypoint%>;
	var earnPoint=(total/100)*10;
	alert("You have earned "+earnPoint);
	alert('Your Loyalty Point bal:'+(earnPoint+loyalty_point));
	
	$.ajax({
		url : 'EarnServlet',
		data : {
			point : (earnPoint+loyalty_point)	
			//point : loyalty_point
		},
		success : function(responseText) {
			//alert("Done Earning");
		},
		error: function(jqXHR, textStatus, errorThrown){  
			
			alert('textStatus:'+textStatus);
		}
	});
	disableEarnRedeem();
	//location.replace("EarnServlet?point="+(earnPoint+loyalty_point));
}


</script>


		

<!-- <input type="button"  value="Pay Bill" class="paybtn" onclick="sendValue();" /> -->
<script type="text/javascript">
function sendValue(){
	var url="payBill.jsp?";
	var redeem_point=0;
	var discount=document.getElementById("discounthidden").value;
	if(document.getElementById("redeemhidden")!=null){
		redeem_point=document.getElementById("redeemhidden").value;	
	}	
	if(discount==null)
	{
		discount=0;
	}
// 	if(redeem_point==null)
// 	{
// 		redeem_point=0;
// 	}
	//alert("Redeem:"+redeem_point);
	var total=document.getElementById("totalhidden").value;
	
	//alert("total:"+total);
	console.log("Inside paybtn discount:"+discount);
	var backString="discount="+discount+"&total="+(total-redeem_point)+"&redeem="+redeem_point;
	window.location.href = url+backString;
	
	
}
</script>

<br/>
		 </div>
		 <br/>
<!-- checkout -->
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
						<input type="submit" value="submit">
						</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	<!-- content-section-ends -->
	<!-- footer-section-starts -->
	
	<!-- footer-section-ends -->
	<script type="text/javascript">
					var discount=0;
					var total='<c:out value="${cart.orderTotal}"/>';
					console.log("Disc:"+discount);
					console.log("Total:"+total);
					document.getElementById("printDiscount").innerHTML ="<input type=\"hidden\" id=\"discounthidden\" value=\""+discount+"\">";
					document.getElementById("printTotal").innerHTML ="<input type=\"hidden\" id=\"totalhidden\" value=\""+total+"\">";
					if(total==0){
						document.getElementById("paybtn").style.cursor = "not-allowed";
						document.getElementById("paybtn").disabled = "true";
						
					}
						function getDiscount(){
							
							
							var coupon=document.getElementById("couponName").value;	
							if(coupon == "null"){
								alert("Please Select Any Coupon");
								
							}
							else if(confirm("Coupon once applied can't be changed.")){
								
								
								var coupon=document.getElementById("couponName").value;	
								console.log("Coupon:"+coupon)
									if(coupon!=null){
										discount=(total*coupon)/100.0;
										
									}else{
										discount = 0;
									}
										
								
								console.log("Discount:"+discount);
								total=total-discount;
								console.log("total:"+total);
								
								
								document.getElementById("discount").innerHTML="Discount: - &#8377;"+discount;
								<%session.setAttribute("discount", request.getAttribute("discount"));%>
								document.getElementById("finalamt").innerHTML="Total: &#8377;"+total;
								document.getElementById("applycouponbtn").style.cursor = "not-allowed";
								document.getElementById("applycouponbtn").disabled = "true";
								//document.getElementById("printHere").innerHTML = "I am here";
								document.getElementById("printDiscount").innerHTML ="<input type=\"hidden\" id=\"discounthidden\" value=\""+discount+"\">";;
								document.getElementById("printTotal").innerHTML ="<input type=\"hidden\" id=\"totalhidden\" value=\""+total+"\">";
								//alert(document.getElementById("printHere").value);									
								//document.getElementById("printValue").innerHTML="Value:::"+document.getElementById("myInput").value; 														
							}
							
						
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