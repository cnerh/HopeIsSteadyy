using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HopeIsSteady.HopeSteady
{
    public partial class AddBlog : System.Web.UI.Page
    {
        DAL dal = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCommentContent.Visible = false;

        }

        protected void btnPost_Click(object sender, EventArgs e)
        { 
            if (!IsPostBack)
            {
                dal.CreateBlog(Session["name"].ToString(), txtContent.Text, txtTitle.Text);

            }
            else
            {
                Response.Redirect("Logon.aspx");
            }
        }

    }
}