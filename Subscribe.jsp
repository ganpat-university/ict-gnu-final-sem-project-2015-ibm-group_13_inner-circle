<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="mail.SubscribeMail" %>
<%@ page import="javax.mail.MessagingException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String email = request.getParameter("email");
String name = request.getParameter("name");
SubscribeMail pm=new SubscribeMail();
String page1="#";
boolean status=false;
try {
	status = pm.sendMail(email,name,"Thanks for Subscribing Us... \n We'll notify more our newsletters. ");
} catch (MessagingException e) {
	page1="error.jsp?msg=failedtoemail";
}
if(status)
{
	page1="index.jsp";
}
else
{
	page1="error.jsp?msg=failedtoemail";
}
response.sendRedirect(page1);
%>
<body>
Hello
</body>
</html>