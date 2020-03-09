using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class memberUserTableEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void returnButt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/mangerOpt.aspx");

        }
    }
}