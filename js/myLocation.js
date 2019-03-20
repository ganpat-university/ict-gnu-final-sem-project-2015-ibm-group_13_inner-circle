/**
 * 
 */



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

