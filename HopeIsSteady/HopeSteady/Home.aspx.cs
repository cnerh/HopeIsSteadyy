using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HopeIsSteady.HopeSteady
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                refreshdata();
            }

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

            refreshdata();
        }

        private void refreshdata()
        {
            Random rnd = new Random();
            int r = rnd.Next(1, 5);
            Image1.ImageUrl = "../images/" + r.ToString() + ".jpg";


        }
    }
}