<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

    <head>
<meta charset="UTF-8">
        <title>Restaurant</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css" media="screen" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/style-portfolio.css">
        <link rel="stylesheet" href="css/picto-foundry-food.css" />
        <link rel="stylesheet" href="css/jquery-ui.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link rel="icon" href="favicon-1.ico" type="image/x-icon">		 
        <style rel="stylesheet" >
        #offer1,#offer2{
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
					
					#offer1 a,#offer2 a {
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
									#offer1 a:hover,#offer2 a:hover{
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
<!--                 <i style="font-size:50px;color:white;margin-left: -1401px;" class="fa">&#xf104;</i> -->
                
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
        	                 <li><a href="CustomerDashboard.jsp" ><i style="font-size:50px;color:white;margin-top:-15px;" class="fa">&#xf104;</i></a></li>    	
                            <li><a class="navactive color_animation" href="#top">WELCOME</a></li>
                            <li><a class="color_animation" href="#story">ABOUT</a></li>                                                                                                                                               
                            <li><a class="color_animation" href="#bread">BREADS</a></li>
                            <li><a class="color_animation" href="#contact">CONTACT</a></li>                                                        
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
                    <span class="social_info"><a><%if(session.getAttribute("rcno")!=null){%><%=session.getAttribute("rcno")%><%}else{%><%=request.getParameter("cn")%><%}%></a></span>
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
<%session.removeAttribute("rname"); %>
<%session.removeAttribute("rcno"); %>
<%session.removeAttribute("runameurl"); %>
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