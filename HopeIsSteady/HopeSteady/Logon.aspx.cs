using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Configuration;

namespace HopeIsSteady.HopeSteady
{
    public partial class Logon : System.Web.UI.Page
    {
        SqlConnection sqlConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HopeSteadyCSN"].ConnectionString);
        DAL dal = new DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dropDown();
            }
            lblMsg.Visible = false;
            //txtIDNO.Visible = false;
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text.Trim() == "" || txtPassword.Text.Trim() == "")
            {

                lblMsg.Visible = true;
                lblMsg.Text = "Please specify a username and/or password";
            }
            else
            {
                string strSessionID = string.Empty;
                if ((HttpContext.Current != null) && (HttpContext.Current.Session != null))
                    strSessionID = HttpContext.Current.Session.SessionID;


                DataTable dsUserDetails = new DataTable();
                dsUserDetails = dal.Login(txtUsername.Text, txtPassword.Text);
                if (dsUserDetails.Rows.Count != 0)
                {
                    Session["name"] = txtUsername.Text;
                    // Session["UserType"]=
                    Session["UserType"] = dsUserDetails.Rows[0]["UserType"].ToString();
                    Response.Redirect("Home.aspx");

                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, this.GetType(), "Alert", "alert('Try to log in again. The credentials are incorrect. ')", true);
                   

                }
            }

        }
        protected void dropDown()
        {
            SqlDataReader sqlDataReader = null;
            try
            {

                if (sqlConnection.State == System.Data.ConnectionState.Closed)
                    sqlConnection.Open();
                SqlCommand sqlCommand = new SqlCommand("spUserTypeRead", sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                sqlDataReader = sqlCommand.ExecuteReader();
                ddUserType.DataSource = sqlDataReader;
                ddUserType.DataTextField = "UserTypeName";
                ddUserType.DataValueField = "UserTypeId";
                ddUserType.DataBind();
                ddUserType.Items.Insert(0, new ListItem("Select", "0"));
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
        protected void btnSave_Click1(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtUserNamecreate.Text))
            {
                using (MailMessage mailMessage = new MailMessage())
                {

                    mailMessage.From = new MailAddress("sinethemba@terra.group");
                    mailMessage.Subject = "Registration Successfull!!";
                    mailMessage.Body = "Hi " + txtFirstName.Text +"<html><body><br><br></body></html>"+ " You now part of the HopSteady Team. Congratulations we welcome you. Everytime wen you feel like you need to get to our website use the Username as: "+txtUserNamecreate.Text+" and Password as :" +txtPasswordCreate.Text + ". Feel free to email us on HopeSteadyIt@gmail.com "+ "<html><body><br><br></body></html>" + "Thank you" + "<html><body><br></body></html>" +"HopeSteady Team" + "<html><body><br><br></body></html>";
                    mailMessage.To.Add(new MailAddress(txtUserNamecreate.Text.Trim()));
                    mailMessage.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient("smtp.live.com", 587);
                    smtp.UseDefaultCredentials = false;
                    smtp.EnableSsl = true;
                    smtp.Credentials = new NetworkCredential("sinethemba@terra.group", "Terr@2021!");
                    smtp.Send(mailMessage);
                }
                dal.CreateUser(txtFirstName.Text, txtSurName.Text, txtUserNamecreate.Text, (txtPasswordCreate.Text), Convert.ToInt32(ddUserType.SelectedItem.Value));
                Response.Redirect("Login.aspx");
            }
        }

    }
}
