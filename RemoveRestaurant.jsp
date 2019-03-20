<%@page import="com.itextpdf.text.Document"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.io.File"%>
<%@page import="model.Model"%>
<%@page import="dao.Dao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" language="javascript">    
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Project</title>
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
<%
String username = request.getParameter("username");
Model m = new Model();
boolean i = Dao.Register(m, "delete from restaurant where username='"+username+"'");
boolean j = Dao.Register(m, "delete from restaurant_profile where username='"+username+"'");
if(i==false && j==false)
{		
	response.sendRedirect("ViewRestaurant.jsp?success=deleterestaurant");				
}
else
{
	response.sendRedirect("error.jsp?msg=restaurantdeletefailed");
}


%>
</body>
</html>