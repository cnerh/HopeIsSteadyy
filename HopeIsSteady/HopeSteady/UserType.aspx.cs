using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace HopeIsSteady.HopeSteady
{
    public partial class UserType : System.Web.UI.Page
    {
        DAL dal = new DAL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RadGridview_ItemCommand(object sender, GridCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string UserTypeId = e.Item.OwnerTableView.DataKeyValues[e.Item.ItemIndex]["UserTypeId"].ToString();
                dal.DeleteUserType(Convert.ToInt32(UserTypeId));
            }
        }

    }
}