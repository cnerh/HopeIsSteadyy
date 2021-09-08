using HopeIsSteady;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace HopeSteady.HopeSteady
{

    public partial class Blog : System.Web.UI.Page
    {

        DAL dal = new DAL();
        DataTable ReadBlog;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {               
                //  RadListView1.ItemCommand += new Telerik.Web.UI.RadListViewCommandEventArgs(ListviewCommand);
                // vRadListView1.ItemCommand += new EventArgs(ListviewCommand);
            }
        }
        
        protected void DataSourceListView(object sender, Telerik.Web.UI.RadListViewNeedDataSourceEventArgs e)
        {
            ReadBlog = dal.BlogRead();
            RadListView1.DataSource = ReadBlog;
            //DataBind();
        }
        protected void ListviewCommand(object sender, RadListViewCommandEventArgs e)
        {
            Button dbutton;
            object commandArg = e.CommandArgument;


            if (e.CommandName == "Likes")
            {
                
                if (Session["name"] != null || Session["name"].ToString() != "")
                {
                    string UserName = Session["name"].ToString();
                    RadListViewDataItem item = e.ListViewItem as RadListViewDataItem;
                    int ID = Convert.ToInt32(item.OwnerListView.DataKeyValues[item.DisplayIndex]["BlogId"]);
                    dal.CreateLikes(ID, UserName);
                    RadListView1.DataSource = ReadBlog;
                    if (item.ItemType == RadListViewItemType.DataItem)
                    {
                         dbutton = (Button)item.FindControl("Likes");
                        Button btn = (Button)RadListView1.FindControl("Likes");
                        // btn.Visible = true;
                 
                      //dbutton.Text = "hi";
                        Label1.Text = ID.ToString();
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(Page, this.GetType(), "Alert", "alert('Try to log in again')", true);
                    }
                }
            }
        }
    }
}