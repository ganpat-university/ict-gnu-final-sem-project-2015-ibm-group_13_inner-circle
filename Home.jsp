<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript">


function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
        
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
   
	document.getElementById("lat").value = position.coords.latitude; 
	document.getElementById("long").value = position.coords.longitude;
   	
   	
}

getLocation();

</script>

</head>

<body>

<form action="RestaurantMapServlet" method="post">
<input type="hidden" id="lat" name="lat"> 
<input type="hidden" id="long" name="long">
<input type="submit" value="Show Restaurant" >
</form>


</body>
</html>