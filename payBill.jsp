<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Bill</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>

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
<div class="container">
    <div class="row">
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h2>Invoice<center><%=session.getAttribute("rest2_name") %></center></h2><h3 class="pull-right">Order # 12345</h3>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    				<strong>Billed To:</strong><br>
    					<%=session.getAttribute("cname")%><br>
    					
    					1234 Main<br>
    					Apt. 4B<br>
    					Springfield, ST 54321
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
        			<strong>Shipped To:</strong><br>
    					<%=session.getAttribute("cname")%><br>
    					1234 Main<br>
    					Apt. 4B<br>
    					Springfield, ST 54321
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong>Order Date:</strong><br>
    					<p id="getdate"></p>
    					<script src="js/payBill.js" type="text/javascript">
    					</script>
    					
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Item</font></strong></td>
								      <td></td>
								       <td><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Unit
								      Price</font></strong></center></td><td></td><td></td>
								    <td><center><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Quantity</font></strong></center></td>
								   	<td colspan="3"></td>
								   	  
									    
									    
								    <td style="padding-left: 75px;"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Total</font></strong></td>
                                </tr>
    						</thead>
    						<tbody>
    							
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							
    					<jsp:useBean id="cart" scope="session" class="com.example.CartBean" /> 
						<c:if test="${cart.lineItemCount==0}">
								<tr>
									  <td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Cart is currently empty -<br/>
								</tr>
						</c:if>
						<c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
							<form name="item" method="POST" action="CartController">
								<tr >
									    <td ><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><c:out value="${cartItem.partNumber}"/><br/>
										<td></td>
								        <td colspan="2"><center><font size="2" face="Verdana, Arial, Helvetica, sans-serif">&#8377;<c:out value="${cartItem.unitCost}"/></font></center></td>
								        <td></td> 
									    <td><center><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'><div><c:out value="${cartItem.quantity}"/></div></font></center></td>
									   
									    
									    <td colspan="3"></td>
									    
									    
									    <td style="padding-left: 75px;"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">&#8377;<c:out value="${cartItem.totalCost}"/></font></td>
									
								</tr>
							</form>
						</c:forEach>
    							
                                <tr >
<!--     									<td colspan="3"> </td> -->
<!--     									<td ></td> -->
<!-- 									    <td></td> -->
									    <td colspan="9">
									    <td style="padding-top: 20px"><font size="2" face="Verdana, Arial, Helvetica, sans-serif" style="margin-right:-60px;"><b>Subtotal: &nbsp;&nbsp;</b>&#8377;<c:out value="${cart.orderTotal}"/>
										    <br><div id="discountamt" style="margin-right:60px;" ></div>
	    									
	    									<br><div id="redeemPoint" ></div>
	    									__________________
	    									<br><div id="finalamt" ></div>
									    </td>
									    <script type="text/javascript">

											var url = window.location.search.substr(1).split("&");
												//alert(window.location.search);
												var i=0;
												var discount=url[0].split("=")[1];
												var finalamt=url[1].split("=")[1];
												var redeemPoint=url[2].split("=")[1];
												document.getElementById("discountamt").innerHTML="<b>Discount</b>:- &#8377;"+discount;
												document.getElementById("redeemPoint").innerHTML="&nbsp;<b>Redeem</b>:- &#8377;"+redeemPoint;
												document.getElementById("finalamt").innerHTML="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Total</b>: &nbsp;&#8377;"+finalamt;
// 												$(document).ready(function () {
// 												    // Handler for .ready() called.
// 												    window.setTimeout(function () {
// 												        location.href = "checkoutTemp.jsp";
// 												    }, 8000);
// 												})
										</script>
    							</tr>
    							
    						</tbody>
    					</table>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
</div>
<%-- <c:remove var = "cartItem"/> --%>
<%-- <c:remove var = "cart"/> --%>
</body>
</html> 