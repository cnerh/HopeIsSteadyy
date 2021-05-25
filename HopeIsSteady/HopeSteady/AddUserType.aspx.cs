using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HopeIsSteady.HopeSteady
{
    public partial class AddUserType : System.Web.UI.Page
    {
        DAL dal = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadBtnSave_Click(object sender, EventArgs e)
        {
            dal.CreateUserType(txtUserTypeName.Text);
            Response.Redirect("UserType.aspx");
        }
    }
}