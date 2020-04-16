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
<title>GeoJSONLayer - 4.15</title>

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
        "esri/layers/GeoJSONLayer",
        "esri/views/MapView"
      ], function(Map, GeoJSONLayer, MapView) {
        // If GeoJSON files are not on the same domain as your website, a CORS enabled server
        // or a proxy is required.
        const url =
          "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.geojson";

        // Paste the url into a browser's address bar to download and view the attributes
        // in the GeoJSON file. These attributes include:
        // * mag - magnitude
        // * type - earthquake or other event such as nuclear test
        // * place - location of the event
        // * time - the time of the event
        // Use the Arcade Date() function to format time field into a human-readable format

        const template = {
          title: "Earthquake Info",
          content: "Magnitude {mag} {type} hit {place} on {time}",
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
          field: "mag",
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
              field: "mag",
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

        const geojsonLayer = new GeoJSONLayer({
          url: url,
          copyright: "USGS Earthquakes",
          popupTemplate: template,
          renderer: renderer //optional
        });

        const map = new Map({
          basemap: "gray",
          layers: [geojsonLayer]
        });

        const view = new MapView({
          container: "viewDiv",
          center: [-168, 46],
          zoom: 3,
          map: map
        });
      });
    </script>
  </head>

  <body>
    <div id="viewDiv"></div>
  </body>
</html>