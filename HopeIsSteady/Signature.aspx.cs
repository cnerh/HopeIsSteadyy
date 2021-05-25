using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Net;

namespace HopeIsSteady
{
    public partial class Signature : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           string Base64 = HiddenField1.Value;
            string constr = ConfigurationManager.ConnectionStrings["HopeSteadyCSN"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Service (ServiceName) VALUES ( @ServiceName)");
                cmd.CommandType = CommandType.Text;
                cmd.Connection = connection;
                cmd.Parameters.AddWithValue("@ServiceName", Base64);
                connection.Open();
                cmd.ExecuteNonQuery();
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            string Base64 = HiddenField1.Value;
            using (MailMessage mailMessage = new MailMessage())
            {

                mailMessage.From = new MailAddress("sinethemba@terra.group");
                mailMessage.Subject = "subject";
                mailMessage.Body = "<html><body> this is a<img src=" + Base64 + "> embedded image.</body></html>";
                mailMessage.To.Add(new MailAddress("cynetember@gmail.com"));
                mailMessage.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient("smtp.live.com", 587);
                smtp.UseDefaultCredentials = false;
                smtp.EnableSsl = true;
                smtp.Credentials = new NetworkCredential("sinethemba@terra.group", "Terr@2021!");
                smtp.Send(mailMessage);
            }
        }
    }
}