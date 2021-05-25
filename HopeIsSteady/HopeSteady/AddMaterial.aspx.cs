using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HopeIsSteady.HopeSteady
{
    public partial class AddMaterial : System.Web.UI.Page
    {
        SqlConnection sqlConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HopeSteadyCSN"].ConnectionString);
        DAL dal = new DAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            dropDown();     
        }

        protected void RadBtnSave_Click(object sender, EventArgs e)
        {
            if (ddService.SelectedItem.Value!=null)
            {
                int serviceid = Convert.ToInt32(ddService.SelectedValue);

                dal.CreateMaterial(txtMaterialName.Text, Convert.ToDouble(txtMateriaPrice.Text), txtMaterialPerCost.Text, serviceid);
                Response.Redirect("UserType.aspx");
            }
        }

        protected void dropDown()
        {
            SqlDataReader sqlDataReader = null;
            try
            {

                if (sqlConnection.State == System.Data.ConnectionState.Closed)
                    sqlConnection.Open();
                SqlCommand sqlCommand = new SqlCommand("spServiceRead", sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                sqlDataReader = sqlCommand.ExecuteReader();
                ddService.DataSource = sqlDataReader;
                ddService.DataTextField = "ServiceName";
                ddService.DataValueField = "ServiceId";
                ddService.DataBind();
                ddService.Items.Insert(0, new ListItem("Select", "0"));
            }
            catch (SqlException exl)
            {
                lblErrorMessage.Text = exl.Message;
            }
            catch (Exception ex2)
            {
                lblErrorMessage.Text = ex2.Message;
            }
            finally
            {
                sqlConnection.Close();
                // sqlDataReader.Close();
            }
        }
    }
}