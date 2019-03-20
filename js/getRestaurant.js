/**
 * 
 */

var lat=3.14,lon=2.34,i=0,j=0;
var url = window.location.search.substr(1).split("&");
var name,lat,lon;
var nmURL,rurl,cn;
var locations=[];
//var nmURL=["kp.jsp","wel.jsp"];
//alert('hello');
//alert(url[0].split("=")[1]);
//alert('URL length = '+url.length);
while(i!=url.length-1)
	{
		//console.log("Name:"+url[i++].split("=")[1]);
		name=url[i++].split("=")[1];
		if(name.search("%20")!=-1)
			name=name.replace("%20"," ");
		console.log("Name:"+name)
		lat=url[i++].split("=")[1];
		lon=url[i++].split("=")[1];
		rurl=url[i++].split("=")[1];
		cn=url[i++].split("=")[1];
		
		nmURL="Restaurant.jsp?nm="+name+"&rurl="+rurl+"&cn="+cn;
		
		//locations.push([name,lat,lon,nmURL[j++]]);
		locations.push([name,lat,lon,nmURL]);
		console.log("Locations"+locations);
	}
//alert('hello');
getLocation();

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
        
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
   	name="My Position";
    lat=position.coords.latitude; 
    lon=position.coords.longitude;
    console.log("Lat:"+lat+"Long:"+lon);
    locations.push([name,lat,lon,""]);
    //locations.push([name,lat,lon,nmURL[j++]]);
  //  alert(lat);
   	initialize(lat,lon); 
   	
   	
}


function initialize(lat,lon){
    
	var i=0,marker;
	var myLatlng = new google.maps.LatLng(lat,lon);
	var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';
	 var icons = {
	          parking: {
	            icon: iconBase + 'parking_lot_maps.png'
	          }
	 }          
    console.log("Locations:"+locations);
var myOptions = {
        zoom: 13,
        center: myLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
        }
     map = new google.maps.Map(document.getElementById("map"), myOptions);
		
      for (i = 0; i < locations.length; i++) {  
     marker = new google.maps.Marker({
       position: new google.maps.LatLng(locations[i][1], locations[i][2]),
       map: map,
       title: locations[i][0],
       url: locations[i][3]
     });
     google.maps.event.addListener(marker, 'click', function() {
    	    window.location.href = this.url;
    	});
     
 }
}
