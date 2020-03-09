using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class lastOrderPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Session["id"] as string;
        }

        protected void returnButt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/aboutPage.aspx");

        }
    }
}