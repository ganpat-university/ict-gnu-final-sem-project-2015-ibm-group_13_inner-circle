
var day,month,year;
var d = new Date();
var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
day=d.getDate();
month=months[d.getMonth()];
year=d.getFullYear();
//alert(month+" "+day+" ,"+year);
var s=month+" "+day+" ,"+year;
document.getElementById("getdate").innerHTML = s;