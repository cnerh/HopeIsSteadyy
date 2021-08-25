using Intercom.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace HopeIsSteady.HopeSteady
{
    public partial class Map : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                MapMarker myMarker = new MapMarker();
                myMarker.Shape = Telerik.Web.UI.Map.MarkerShape.PinTarget.ToString();
                myMarker.Title = "HopeSteady Durban Office";             
                myMarker.LocationSettings.Latitude = -29.85185;
                myMarker.LocationSettings.Longitude = 30.99337;
                // map.MarkersCollection.Add(myMarker);
                RadMap2.MarkersCollection.Add(myMarker);

                MapMarker myMarker1 = new MapMarker();
                myMarker1.Shape = Telerik.Web.UI.Map.MarkerShape.PinTarget.ToString();
                myMarker1.Title = "HopeSteady Pretoria Office";
                myMarker1.LocationSettings.Latitude = -26.2044;
                myMarker1.LocationSettings.Longitude = 28.0580;
                // map.MarkersCollection.Add(myMarker);
                RadMap2.MarkersCollection.Add(myMarker1);
        }
    }
    
}