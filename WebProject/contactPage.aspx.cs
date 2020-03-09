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
    public partial class contactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void typeOfContactDrop_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void telBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void sendButt_Click(object sender, EventArgs e)
        {
            if (telBox.Text != "" && emailBox.Text != "" && telBox.Text != "")
            {
                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(conString))
                {
                    SqlCommand cmd = new SqlCommand("insert into contactDetails(name,email,telephone,text,typeContact) values (@name,@email,@telephone,@typeContact,@text)",con);
          
                    cmd.Parameters.AddWithValue("@name", nameBox.Text);
                    cmd.Parameters.AddWithValue("@email", emailBox.Text);
                    cmd.Parameters.AddWithValue("@telephone", telBox.Text);
                    cmd.Parameters.AddWithValue("@typeContact", typeOfContactDrop.Text);
                    cmd.Parameters.AddWithValue("@text", inputText.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
                telBox.Text = "";
                emailBox.Text = "";
                nameBox.Text = "";
                inputText.Text = "";
                string script = "alert(\"קיבלנו את פנייתך\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

                //add first page after
            }
        }
    }
}