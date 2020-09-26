using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class ShowCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            FileUpload f = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;
            if (f.HasFile)
            {
                e.NewValues["picture"] = f.FileBytes;
            }
           
        }
    }
}