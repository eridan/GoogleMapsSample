<!doctype html>

<html lang="en">
    <head>
        <title>THe Earth Maps!</title>
        <meta charset="utf-8" name="viewport" content="initial-scale=1.0, user-scalable=no" />
        <style type="text/css">
            html { height: 100% }
            body { height: 100%; margin: 0; padding: 0 }
            #map_canvas { height: 40%; margin: 10px; padding: 10px;}
            #map_canvas1 { height: 40%; margin: 10px; padding: 10px;}
        </style>
        
        <script src="js/myLoc.js"></script>

        <script type="text/javascript">
            function initialize() {
                var myOptions = {
                    zoom: 18,
//                    center: new google.maps.LatLng(-34.397, 150.644),
                    center: new google.maps.LatLng(lat, longit),
                    mapTypeId: google.maps.MapTypeId.HYBRID
                }
                var myOptions1 = {
                    zoom: 18,
                    center: new google.maps.LatLng(51.45497,-0.233202),
                    //mapTypeId: google.maps.MapTypeId.ROADMAP
//                    mapTypeId: google.maps.MapTypeId.SATELLITE
//                    mapTypeId: google.maps.MapTypeId.HYBRID
                    mapTypeId: google.maps.MapTypeId.TERRAIN
                }
                var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
                var map1 = new google.maps.Map(document.getElementById("map_canvas1"), myOptions1);
            }

            // Wait until API is fully loaded, then execute function "initialize""
            function loadScript() {
                var script = document.createElement("script");
                script.type = "text/javascript";
                script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyCUWLNQILG9FY1uHuz0ncQ7sKuUXtS9h9I&sensor=true&callback=initialize";
                document.body.appendChild(script);
            }
        </script>
    </head>

    <body>
<!--    <body onload="loadScript()">-->
        <div id="myLocation"> Hello! </div>
        <br />
        <div id="map_canvas" style="width:50%; height:50%"></div>
        <div id="map_canvas1" style="width:50%; height:50%"></div>
        <p>Hello! This is the default welcome page for a Spring Web MVC project.</p>
        <p><i>To display a different welcome page for this project, modify</i>
    <tt>index.jsp</tt> <i>, or create your own welcome page then change
        the redirection in</i> <tt>redirect.jsp</tt> <i>to point to the new
        welcome page and also update the welcome-file setting in</i>
    <tt>web.xml</tt>.</p>
</body>
</html>
