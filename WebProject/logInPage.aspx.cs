using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebProject
{
    public partial class logInPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
             if (mangerBox.Checked == false && coustomerBox.Checked == false)
             {
                 mangerBox.Enabled = true;
                 coustomerBox.Enabled = true;
                lbmanger.Visible = false;
                perCodeTB.Visible = false;
                perValidator.Visible = false;

            }

            if (mangerBox.Checked == true )
            {
                coustomerBox.Enabled = false;
                lbmanger.Visible = true;
                perCodeTB.Visible = true;
                perValidator.Visible = true;

            }
            if (coustomerBox.Checked == true)
            {
                mangerBox.Enabled = false;
                lbmanger.Visible = false;
                perCodeTB.Visible = false;
                perValidator.Visible = false;

            }
 
        }

        protected void loginBut_Click(object sender, EventArgs e)
        {
            if (coustomerBox.Checked == true)
            {
                DataView dv = loginCheck.Select(DataSourceSelectArguments.Empty) as DataView;
                if (dv != null && dv.Table.Rows.Count != 0)
                {
                    checkTestLa.Text = "Successful Login";
                    Session["logged"] = userNameBox.Text;
                    GridView id = new GridView();
                    id.DataSource = SDid;
                    id.DataBind();
                    Session["id"] = id.Rows[0].Cells[0].Text;
                    passBox.Text = " ";
                    userNameBox.Text = " ";
                    Response.Redirect("~/aboutPage.aspx");

                }
                else
                    checkTestLa.Text = "Bad login!";

            }
            else if(mangerBox.Checked==true)
            {
                DataView dv = mangerCheck.Select(DataSourceSelectArguments.Empty) as DataView;
                if (dv != null && dv.Table.Rows.Count != 0)
                {
                    checkTestLa.Text = "Successful Login";
                    Session["logged"] = userNameBox.Text;
                    Session["logged manager"] ="manager";
                    GridView id = new GridView();
                    id.DataSource = SDid;
                    id.DataBind();
                    Session["id"] = id.Rows[0].Cells[0].Text;
                    passBox.Text = " ";
                    userNameBox.Text = " ";
                    perCodeTB.Text = " ";
                    Response.Redirect("~/aboutPage.aspx");

                }
                else
                    checkTestLa.Text = "Bad login!";

            }
        }
    }
}