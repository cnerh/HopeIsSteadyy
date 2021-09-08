using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace HopeIsSteady.HopeSteady
{
    public partial class Service : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (RadListView1.Items.Count > 0)
            {
                RadListView1.Items[0].Selected = true;
              //  RadListView1.SelectedItems();
            }
        }
    

     
        
      
       
        //collect the binary data in bytes array and pass it in the Updating/Inserting events of the data source control to update the source image field
        protected byte[] UpdateImageField(RadListViewItem listViewItem)
        {
            RadAsyncUpload radUpload = listViewItem.FindControl("ruCustomerImage") as RadAsyncUpload;
            byte[] bytes;

            if (radUpload.UploadedFiles.Count > 0)
            {
                UploadedFile file = radUpload.UploadedFiles[0];
                using (Stream stream = file.InputStream)
                {
                    bytes = new byte[stream.Length];
                    stream.Read(bytes, 0, (int)stream.Length);
                }
            }
            else
            {
                bytes = new byte[0];
            }
            return bytes;
        }
       
    }
}
