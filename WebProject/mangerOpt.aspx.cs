using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebProject
{
    public partial class mangerOpt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void tableContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/contactDetTableEdit.aspx");
        }



        protected void tableDessert_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/tableDessertEdit.aspx");
        }

        protected void tableIceCream_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/iceCreamTableEdit.aspx");
        }

        protected void tableMember_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/memberUserTableEdit.aspx");
        }

        protected void ordersButt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ordersTableEdit.aspx");

        }

        protected void itemsOrderButt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/itemsOrderTableEdit.aspx");

        }
    }
}