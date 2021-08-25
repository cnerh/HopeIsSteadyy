<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageSingleMenu.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="HopeIsSteady.HopeSteady.Map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title> Map</title>
        <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script>
       // This example creates a 2-pixel-wide red polyline showing the path of
       // the first trans-Pacific flight between Oakland, CA, and Brisbane,
       // Australia which was made by Charles Kingsford Smith.
       function initMap() {
           const map = new google.maps.Map(document.getElementById("RadMap2"), {
               zoom: 3,
               center: { lat: 0, lng: -180 },
               mapTypeId: "terrain",
           });
           const flightPlanCoordinates = [
               { lat: 37.772, lng: -122.214 },
               //{ lat: 21.291, lng: -157.821 },
               //{ lat: -18.142, lng: 178.431 },
               { lat: -27.467, lng: 153.027 },
           ];
           const flightPath = new google.maps.Polyline({
               path: flightPlanCoordinates,
               geodesic: true,
               strokeColor: "#FF0000",
               strokeOpacity: 1.0,
               strokeWeight: 2,
           });
           flightPath.setMap(map);
       }
   </script>
     <script src="../scripts/scripts.js"></script>
        <link href="../styles/Style.css" rel="stylesheet" />
    <link href="../styles/ServiceListView.css" rel="stylesheet" />
    <link href="../styles/listView.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <telerik:RadClientDataSource runat="server" ID="RadClientDataSource1">
    <DataSource>
        <WebServiceDataSourceSettings>
            <Select DataType="JSON" Url="https://demos.telerik.com/aspnet-ajax/map/examples/functionality/markers/JSON/MarkersData.json" />
        </WebServiceDataSourceSettings>
    </DataSource>
</telerik:RadClientDataSource>
 <div class="container">
      <div class="row" data-aos="fade-up">
          <div class="col-lg-6 ">
               <telerik:RadMap  class="mb-4 mb-lg-0" RenderMode="Lightweight" runat="server" ID="RadMap2" Zoom="6" >
                <CenterSettings Latitude="-29.85185" Longitude="30.99337" />
                <LayersCollection>
                    <telerik:MapLayer Type="Tile" Subdomains="a,b,c"
                            UrlTemplate="https://#= subdomain #.tile.openstreetmap.org/#= zoom #/#= x #/#= y #.png"
                            Attribution="&copy; <a href='https://osm.org/copyright' title='OpenStreetMap contributors' target='_blank'>OpenStreetMap contributors</a>.">
                    </telerik:MapLayer>
                    <telerik:MapLayer Type="Marker" Shape="pin"  ClientDataSourceID="RadClientDataSource1" LocationField="location">
                    </telerik:MapLayer>
                </LayersCollection>
               </telerik:RadMap>
           </div>
       </div>
  </div>


</asp:Content>
