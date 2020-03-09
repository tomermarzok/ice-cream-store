using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace WebProject
{
    public partial class MainPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            profileImage.Visible = false;
            string username = Session["logged"] as string;
            logUserLab.Text = (username == null ? "not logged" : "logged as " + username);
            string typeLogg = Session["logged manager"] as string;
            string id = Session["id"] as string;

            if (username!=null)
            {
                privateDetailsButt.Visible = true;
                lastOrderButt.Visible = true;
            }
            GridView image = new GridView();
            image.DataSource = SDimage;
            image.DataBind();
            if (id != null)
            {
                if (image.Rows[0].Cells[0].Text != "&nbsp;")
                {
                    string img = image.Rows[0].Cells[0].Text;
                    profileImage.ImageUrl = "~/profileImage/" + img;
                    profileImage.Visible = true;

                }
            }
            else profileImage.Visible = false;

            if (typeLogg == "manager")
            {
                logUserLab.Text += " manager";
                mangerButt.Visible = true;
                searchButt.Visible = true;
            }
            if (username != null)
            {
                logOut.Visible = true;
            }
        }
        protected void aboutButt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/aboutPage.aspx");

        }

        protected void memberButt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/memberPage.aspx");

        }

        protected void contactButt_Click(object sender, EventArgs e)
        {
             Response.Redirect("~/contactPage.aspx");

        }

        protected void icecreamButt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/menuPage.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/mangerOpt.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["logged"] = null;
            Session["logged manager"] = null;
            Session["id"] = null;
            mangerButt.Visible = false;
            lastOrderButt.Visible = false;
            profileImage.Visible = false;
            logOut.Visible = false;
            searchButt.Visible = false;

            Response.Redirect("~/aboutPage.aspx");
        }



        protected void loginbutt_Click(object sender, EventArgs e)
        {
          
        }

        protected void privateDetailsButt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/editDetails.aspx");

        }

        protected void lastOrderButt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LastOrderPage.aspx");

        }

        protected void searchButt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/searchPage.aspx");

        }
    }
}