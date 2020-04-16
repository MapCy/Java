<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>  

<html>  

<head>  

<meta charset="UTF-8">  

<meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no">  

<link rel="stylesheet" href="http://192.168.141.10:8080/ArcGis-4.7/arcgis_js_api/library/4.7/esri/css/main.css">  

<script src="http://192.168.141.10:8080/ArcGis-4.7/arcgis_js_api/library/4.7/init.js"></script>  

<title>create a map</title>  

<style>  

    html,  

    body,  

    #viewDiv {  

      padding: 0;  

      margin: 0;  

      height: 100%;  

      width: 100%;  

    }  

</style>  

<script>  

    require([  

      "esri/Map",  

      "esri/views/MapView",  

      "dojo/domReady!"  

    ], function(Map, MapView) {  

      var map = new Map({  

        basemap: "streets"  

      });  

      var view = new MapView({  

        container: "viewDiv",  

        map: map,  

        zoom: 4,  

        center: [15, 65]  

      });

    });  

</script>  

</head>  

<body>  

<div id="viewDiv"></div>  

</body>  

</html>