using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace HopeIsSteady.HopeSteady
{
    public partial class User : System.Web.UI.Page
    {
        DAL dal = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RadGridview_ItemCommand(object sender, GridCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string UserID = e.Item.OwnerTableView.DataKeyValues[e.Item.ItemIndex]["HopeSteadyUserId"].ToString();
                dal.DeleteUser(Convert.ToInt32(UserID));
            }
        }

    }
}