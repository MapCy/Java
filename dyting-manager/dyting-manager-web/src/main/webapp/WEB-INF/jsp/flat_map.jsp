<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="initial-scale=1,maximum-scale=1,user-scalable=no"
    />
    <!--
  ArcGIS API for JavaScript, https://js.arcgis.com
  For more information about the layers-geojson sample, read the original sample description at developers.arcgis.com.
  https://developers.arcgis.com/javascript/latest/sample-code/layers-geojson/index.html
  -->
<link rel="stylesheet" href="http://192.168.141.10:8080/ArcGis-4.15/arcgis_js_api/library/4.15/esri/themes/light/main.css">  
<script src="http://192.168.141.10:8080/ArcGis-4.15/arcgis_js_api/library/4.15/init.js"></script>
<title>Flat Map</title>

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
    
    <script src="js/jquery-2.1.1.js"></script>
    <script>
      //定义全局变量
      var url;
     
      require([
        "esri/Map",
        "esri/layers/GeoJSONLayer",
        "esri/views/MapView",
        "esri/geometry/Point",
        "esri/widgets/Zoom",
        "esri/PopupTemplate"
      ], function(Map, GeoJSONLayer, MapView, Point, Zoom, PopupTemplate) {
        url = "http://localhost:8080/map/threed";

        const template = {
          title: "全球工控态势",
          content: "<h1>{name}: {value}</h1>",
          fieldInfos: [
            {
              fieldName: "time",
              format: {
                dateFormat: "short-date-short-time"
              }
            }
          ]
        };

        
        const renderer = {
          type: "simple",
          field: "ipnum",
          symbol: {
            type: "simple-marker",
            color: "orange",
            outline: {
              color: "white"
            }
          },
          visualVariables: [
            {
              type: "size",
              field: "ipnum",
              stops: [
                {
                  value: 2.5,
                  size: "4px"
                },
                {
                  value: 8,
                  size: "40px"
                }
              ]
            }
          ]
        };

        var geojsonLayer = new GeoJSONLayer({
          url: url,
          copyright: "Dyting",
          popupTemplate: template,
          renderer: renderer //optional
        });

        const map = new Map({
          basemap: "streets",
          layers: [geojsonLayer]
        });

        const view = new MapView({
          container: "viewDiv",
          center: [-168, 46],
          zoom: 3,
          map: map
        });
        
       
        view.on("click", function(evt) {
        	view.hitTest(evt).then(function (response) {
        		console.log(response);
                var result = response.results[0];
                if (result && result.graphic) {
                	//获取当前点击处的经纬度并取整数部分
                	var lat = parseInt(result.graphic.geometry.latitude);
                	var lon = parseInt(result.graphic.geometry.longitude);
                	
                    console.log("你点了我: ["+lat+","+lon+"]"+typeof(lat));
    
                    var countryUrl = "http://localhost:8080/map/threed?latitude="+lat+"&longitude="+lon+"";
                    
                    //放大点击部分
                    var zoom = new Zoom({
                    	view: view
                    });
                    zoom.zoomIn();
                    
                    console.log(countryUrl);
           
                    var countryLayer = new GeoJSONLayer({
                        url: countryUrl,
                        copyright: "Dyting",
                        popupTemplate: template,
                        renderer: renderer //optional
                      });

                    map.add(countryLayer);
                    console.log("Layer:"+map.allLayers.length);
                }
            })
        });
        
      });
    </script>
  </head>

  <body>
    <div id="viewDiv"></div>
  </body>
</html>