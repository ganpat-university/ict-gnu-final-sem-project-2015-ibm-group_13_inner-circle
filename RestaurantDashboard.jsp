<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.Model" %>
<%@page import="dao.Dao" %>
<%@page import="java.sql.ResultSet" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

    <head>
<meta charset="UTF-8">
        <title>Restaurant Dashboard</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <link rel="stylesheet" href="newcss/normalize.css">
        <link rel="stylesheet" href="newcss/main.css" media="screen" type="text/css">
		<link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="newcss/bootstrap.css">
        <link rel="stylesheet" href="newcss/style-portfolio.css">
        <link rel="stylesheet" href="newcss/picto-foundry-food.css" />
        <link rel="stylesheet" href="newcss/jquery-ui.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="newcss/font-awesome.min.css" rel="stylesheet">
        <link rel="icon" href="favicon-1.ico" type="image/x-icon">		 
        <style rel="stylesheet" >
        #offer1,#offer2,#offer3{
			  position: relative;
			  max-width: 300px;
			  height: auto;

			  border-radius: 15px;
			  margin: 0 auto;
			  padding: 40px 20px;
			  -webkit-box-shadow: 0 10px 15px rgba(0,0,0,.1) ;
			          box-shadow: 0 10px 15px rgba(0,0,0,.1) ;
			-webkit-transition: .5s;
			transition: .5s;
			}			
         #offer1:hover{
					  -webkit-transform: scale(1.1);
					          transform: scale(1.1);
					}
		#offer2:hover{
					  -webkit-transform: scale(1.1);
					          transform: scale(1.1);
					}
		#offer3:hover{
					  -webkit-transform: scale(1.1);
					          transform: scale(1.1);
					}
					
					#offer1 a,#offer2 a,#offer3 a {
									  position: relative;
									  z-index: 2;
									  background: #fff;
									  color : black;
									  width: 150px;
									  height: 40px;
									  line-height: 40px;
									  border-radius: 40px;
									  display: block;
									  text-align: center;
									  margin: 20px auto 0 ;
									  font-size: 16px;
									  cursor: pointer;
									  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
									          box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
									
									}
									#offer1 a:hover,#offer2 a:hover,#offer3 a:hover{
									    text-decoration: none;
									}
									.title h2 {
									  position: relative;
									  margin: 20px  0 0;
									  padding: 0;
									  color: #fff;
									  font-size: 28px;
									 z-index: 2;
									 text-align: center;
									}
									.price,.option{
									  position: relative;
									  z-index: 2;
									}
									.price h4 {
									margin: 0;
									padding: 20px 0 ;
									color: #fff;
									font-size: 60px;
									}
									.option ul {
									  margin: 0;
									  padding: 0;
									
									}
									.option ul li {
									margin: 0 0 10px;
									padding: 0;
									list-style: none;
									color: #fff;
									font-size: 16px;
									}
																		input{
									background:none;
									border:none;
									border-top:2px solid white;
									border-bottom:2px solid white;
									text-align:center;
									width:100px;}
									
	/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  animation: fade 1s linear;
  opacity:1;
  
}

@-webkit-keyframes fade {
  0%,100% {opacity: .4} 
  100% {opacity: 1}
}

@keyframes fade {

  0%,100% {opacity: .4} 
  100% {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}						

/* Style the buttons */
.btn {
/*   border: none; */
  
  padding: 10px 16px;
  cursor: pointer;
  font-size: 18px;
  
}

/* Style the active class, and buttons on mouse-over */
.active, .btn:hover {
  background-color:white; 
  border-bottom:2px solid green;
  border-radius: 0px;
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

        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="row">
                <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                  
                        <a class="navbar-brand" href="#"><%if(session.getAttribute("rname")!=null){%><%=session.getAttribute("rname")%><%}else{%><%=request.getParameter("nm")%><%}%></a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav main-nav  clear navbar-right ">
                            <li><a class="navactive color_animation" href="#top">WELCOME</a></li>
                            <li><a class="color_animation" href="#story">ABOUT</a></li>
                           
                            <li><a class="color_animation" href="#offer">OFFER</a></li>                                                                                     
                            <li><a class="color_animation" href="#bread">BREADS</a></li>
                            <li><a class="color_animation" href="#contact">CONTACT</a></li>  
                            <li><a class="color_animation" href="index.jsp">SIGN OUT</a></li>                          
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div>
            </div><!-- /.container-fluid -->
        </nav>
         
        <div id="top" class="starter_container bg">
            <div class="follow_container">
                <div class="col-md-6 col-md-offset-3">
                    <h2 class="top-title"><%if(session.getAttribute("rname")!=null){%><%=session.getAttribute("rname")%><%}else{%><%=request.getParameter("nm")%><%}%></h2>
                    <h2 class="white second-title">" Best in the city "</h2>
                    <hr>
                </div>
            </div>
        </div>

        <!-- ============ About Us ============= -->

        <section id="story" class="description_content">
            <div class="text-content container">
                <div class="col-md-6">
                    <h1>About us</h1>
                    <div class="fa fa-cutlery fa-2x"></div>
                    <p class="desc-text">Restaurant is a place for simplicity. Good food, good beer, and good service. Simple is the name of the game, and we’re good at finding it in all the right places, even in your dining experience. We’re a small group from Denver, Colorado who make simple food possible. Come join us and see what simplicity tastes like.</p>
                </div>
                <div class="col-md-6">
                    <div class="img-section">
                       <img src="images/kabob.jpg" width="250" height="220">
                       <img src="images/limes.jpg" width="250" height="220">
                       <div class="img-section-space"></div>
                       <img src="images/radish.jpg"  width="250" height="220">
                       <img src="images/corn.jpg"  width="250" height="220">
                   </div>
                </div>
            </div>
        </section>

	        	
	
<!-- ============ offers  ============= -->


<section id ="offer" class="description_content">
             <div class="pricing background_content">
                <h1><span>Offer</span> </h1>
             </div>
             <br/><br/><br/>
             <div style="text-align:center" id="myDIV">
						  
						  
						  <a class="btn active" onclick="currentSlide(2)">Update Offer</a> 
			</div>  
			<script>
				// Add active class to the current button (highlight it)
				var header = document.getElementById("myDIV");
				var btns = header.getElementsByClassName("btn");
				for (var i = 0; i < btns.length; i++) {
				  btns[i].addEventListener("click", function() {
				  var current = document.getElementsByClassName("active");
				  current[0].className = current[0].className.replace(" active", "");
				  this.className += " active";
				  });
				}
			</script>
             <br/><br/><br/>
            <div class="slideshow-container">

							
				<%
				
 				String name=session.getAttribute("rname").toString();
				session.setAttribute("restname", name);
//				String name="Barbeque";
				Model m=new Model();
// 				String loginquery="Select (offer1_name,offer1_discount,offer2_name,offer2_discount,offer3_name,offer3_discount) from restaurant where Name='"+name+"'";
				String loginquery="Select * from restaurant where Name='"+name+"'";
				ResultSet rs=Dao.login(m,loginquery);
				while(rs.next()){
					String offer1_name=rs.getString("offer1_name");
					String offer2_name=rs.getString("offer2_name");
					String offer3_name=rs.getString("offer3_name");
					String offer1_discount=rs.getString("offer1_Discount");
					//String offer1_discount="null";
					String offer2_discount=rs.getString("offer2_Discount");
					String offer3_discount=rs.getString("offer3_Discount");
//  					if("null".equals(offer1_discount)){
//  						offer1_discount="null";
//  					}
// 					if("null".equals(offer2_discount)){
// 						offer2_discount="null";
// 					}
// 					if("null".equals(offer3_discount)){
// 						offer3_discount="null";
// 					}
					
				
				%>		
				<div class="mySlides fade">
							    
							    <div class="row">
						            <div class="col-lg-4" >
						              <div class="card" id="offer1" style="background: linear-gradient(-45deg,#f403d1,#64b5f6);height:300px;border-radius: 15px;">
						                
						                <div class="card-body">
						                	<div class="title"><h2>Offer 1</h2></div>
						                	<br/>
						                	<div class="option">
						                		
			              							<ul>
			              								<li>Offer Name </li><li><input id="offer1_name" value="<%=offer1_name %>" type="text" /></li>
			              								
			              								<li>Offer percentage </li><li> <input id="offer1_per" value="<%if(offer1_discount==null){%><%=0 %><%}else{ %><%=offer1_discount %><%} %>" type="number" min="0" max="100" /></li>              
			              							</ul>
            								</div> 
											

									         
						                <a onclick="disableOffer('offer1')" id="offer1_btn">Update offer</a>
						                </div><!-- end of outer card-body -->      
						            </div>
						            </div><!--end of 1st col-->
						           <div class="col-lg-4" >
						              <div class="card" id="offer2" style="background:linear-gradient(-45deg,#ffec61,#f321d7);height:300px;border-radius: 15px;">
						                
						                <div class="card-body">
						                	<div class="title"><h2>Offer 2</h2></div>
						                	<br/>
						                	<div class="option">
			              							<ul>
			              								<li>Offer Name </li><li><input id="offer2_name" value="<%=offer2_name %>" type="text" /></li>
			              								
			              								<li>Offer percentage </li><li><input id="offer2_per" type="number" value="<%if(offer2_discount==null){%><%=0 %><%}else{ %><%=offer2_discount %><%} %>" min="0" max="100" /></li>              
			              							</ul>
            								</div> 
						                	<div class="price">
						                		
									              
									        </div>
									         
						                <a id="offer2_btn" onclick="disableOffer('offer2')">Update offer</a>
						                </div><!-- end of outer card-body -->      
						            </div>
						            </div><!--end of 2nd col-->
						             <div class="col-lg-4" >
						              <div class="card" id="offer3" style="background: linear-gradient(-45deg,#24ff72,#9a4eff);height:300px;border-radius: 15px;">
						                
						                <div class="card-body">
						                	<div class="title"><h2>Offer 3</h2></div>
						                	<br/>
						                	<div class="option">
			              							<ul>
			              								<li>Offer Name</li><li> <input id="offer3_name" value="<%=offer3_name %>" type="text" /></li>
			              								
			              								<li>Offer percentage </li><li><input type="number" id="offer3_per" value="<%if(offer3_discount==null){%><%=0 %><%}else{ %><%=offer3_discount %><%} %>" min="0" max="100" /></li>              
			              							</ul>
            								</div> 
						                	<div class="price">
						                		
									              
									        </div>
									         
						                <a id="offer3_btn" onclick="disableOffer('offer3')">Update offer</a>
						                </div><!-- end of outer card-body -->      
						            </div>
						            </div><!--end of 3rd col-->
						   			
						           <div class="col-lg-2" > 
						              <div class="card " >
									            </div>
									 </div>           
						          </div><!-- end of 1st row -->
							
							    
				</div>
						
						
						
			</div>
						
						
					        
            	<%
            	}
				
				%>	
                     	        					
						           
						          <br/><br/>
						          
						 <br>
                         <br>           
						</div><!--end of offer row-->
			<script type="text/javascript" >
			
			var slideIndex = 1;
			showSlides(slideIndex);

			function plusSlides(n) {
			  showSlides(slideIndex += n);
			}

			function currentSlide(n) {
			  showSlides(slideIndex = n);
			}

			function showSlides(n) {
			  var i;
			  var slides = document.getElementsByClassName("mySlides");
			  
			  if (n > slides.length) {slideIndex = 1}    
			  if (n < 1) {slideIndex = slides.length}
			  for (i = 0; i < slides.length; i++) {
			      slides[i].style.display = "none";  
			  }  
			  slides[slideIndex-1].style.display = "block";    
			}
			</script>
                          <script type="text/javascript">
                          function disableOffer(ipVal){
                        	  alert("Successfully added "+ipVal);
                        	  var offer_name=document.getElementById(ipVal+"_name");
                        	  var offer_discount=document.getElementById(ipVal+"_per");
                        	  var offer_id=ipVal;
                        	  alert(document.getElementById(ipVal+"_name").value);
//                           document.getElementById("offer1").style.cursor = "not-allowed";
// 							document.getElementById(ipVal+"_name").disabled = "true";
// 							document.getElementById(ipVal+"_per").readOnly = true;
							offer_name.disabled = "true";
							offer_discount.readOnly = true;
							document.getElementById(ipVal+"_btn").style.cursor = "not-allowed";
							document.getElementById(ipVal+"_btn").onclick=function(event){
								event.preventDefault();
							}
							location.replace("OffersServlet?offerName="+offer_name.value+"&offerDisc="+offer_discount.value+"&offerId="+offer_id);
                          }
                          
                          function enableoffers(){
                        	  var offerid=['offer1','offer2','offer3'];
                        	  
                        	  
                          }
                          </script>
                                
																	                                
                            </ul><!-- @end #portfolio -->
                        </div><!-- @end #w -->
                    </div>  
        </section>

       <!-- ============ Our Bread  ============= -->


        <section id="bread" class=" description_content">
            <div  class="bread background_content">
                <h1>Our Breakfast <span>Menu</span></h1>
            </div>
            <div class="text-content container"> 
                <div class="col-md-6">
                    <h1>OUR BREAD</h1>
                    <div class="icon-bread fa-2x"></div>
                    <p class="desc-text">We love the smell of fresh baked bread. Each loaf is handmade at the crack of dawn, using only the simplest of ingredients to bring out smells and flavors that beckon the whole block. Stop by anytime and experience simplicity at its finest.</p>
                </div>
                <div class="col-md-6">
                    <img src="images/bread1.jpg" width="260" alt="Bread">
                    <img src="images/bread1.jpg" width="260" alt="Bread">
                </div>
            </div>
        </section>


        
        <!-- ============ Featured Dish  ============= -->

        <section id="featured" class="description_content">
            <div  class="featured background_content">
                <h1>Our Featured Dishes <span>Menu</span></h1>
            </div>
            <div class="text-content container"> 
                <div class="col-md-6">
                    <h1>Have a look to our dishes!</h1>
                    <div class="icon-hotdog fa-2x"></div>
                    <p class="desc-text">Each food is handmade at the crack of dawn, using only the simplest of ingredients to bring out smells and flavors that beckon the whole block. Stop by anytime and experience simplicity at its finest.</p>
                </div>
                <div class="col-md-6">
                    <ul class="image_box_story2">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="images/slider1.jpg"  alt="...">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="images/slider2.jpg" alt="...">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="images/slider3.JPG" alt="...">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ul>
                </div>
            </div>
        </section>



         <!-- ============ Social Section  ============= -->
      
        <section class="social_connect">
            <div class="text-content container"> 
                <div class="col-md-6">
                    <span class="social_heading">FOLLOW</span>
                    <ul class="social_icons">
                        <li><a class="icon-twitter color_animation" href="#" target="_blank"></a></li>
                        <li><a class="icon-github color_animation" href="#" target="_blank"></a></li>
                        <li><a class="icon-linkedin color_animation" href="#" target="_blank"></a></li>
                        <li><a class="icon-mail color_animation" href="#"></a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <span class="social_heading">OR DIAL</span>
                    <span class="social_info"><a class="color_animation"><%if(session.getAttribute("rcno")!=null){%><%=session.getAttribute("rcno")%><%}else{%><%=request.getParameter("cn")%><%}%></a></span>
                </div>
            </div>
        </section>

        <!-- ============ Contact Section  ============= -->

        <section id="contact">
            <div class="map">
            	<iframe src="<%if(session.getAttribute("runameurl")!=null){%><%=session.getAttribute("runameurl")%><%}else{%><%=request.getParameter("rurl")%><%}%>" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
<!-- 			<iframe src="images/mang123.jpg" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe> -->
<!-- 				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3671.5565621984206!2d72.499784914968!3d23.040048484944244!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e9b439d353e05%3A0xb786b9b0533f822d!2s%40Mango!5e0!3m2!1sen!2sin!4v1549435099851" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>						 -->
            </div>
        </section>

        <!-- ============ Footer Section  ============= -->
<%-- <%session.removeAttribute("rname"); %> --%>
<%-- <%session.removeAttribute("rcno"); %> --%>
<%-- <%session.removeAttribute("runameurl"); %> --%>
        <footer class="sub_footer">
            <div class="container">
                <div class="col-md-4"><p class="sub-footer-text text-center">&copy; Restaurant 2019, Theme by <a href="https://themewagon.com/">Inner Circle</a></p></div>
                <div class="col-md-4"><p class="sub-footer-text text-center">Back to <a href="#top">TOP</a></p>
                </div>
            </div>
        </footer>


        <script type="text/javascript" src="js/jquery-1.10.2.min.js"> </script>
        <script type="text/javascript" src="js/bootstrap.min.js" ></script>
        <script type="text/javascript" src="js/jquery-1.10.2.js"></script>     
        <script type="text/javascript" src="js/jquery.mixitup.min.js" ></script>
        <script type="text/javascript" src="js/main.js" ></script>

    </body>
</html>	