using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HopeIsSteady.HopeSteady
{

    public partial class AddService : System.Web.UI.Page
    {
        DAL dal = new DAL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Upload(object sender, EventArgs e)
        {
            byte[] bytes;

            using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            {
                bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
            }
            dal.CreateService(txtServiceName.Text, bytes, FileUpload1.PostedFile.ContentType, Path.GetFileName(FileUpload1.PostedFile.FileName),txtDescription.Text);

            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}
