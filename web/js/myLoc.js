window.onload = getMyLocation();

var lat = 0;
var longit = 0;

function getMyLocation() {
    if(navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(displayLocation);
    } else {
        alert('oops, no geolocation support');
    }
}

function displayLocation(position) {
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
    
    var div = document.getElementById("myLocation");
    lat = latitude;
    longit = longitude;
    div.innerHTML = "You are at Latitude "+latitude+ ", Longitude: "+longitude;
    loadScript();
}