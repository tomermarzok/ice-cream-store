using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


namespace WebProject
{
    public partial class newUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void resetButt_Click(object sender, EventArgs e)
        {
            passBox.Text = "";
            pass2Box.Text = "";
            usernameBox.Text = "";
            addresBox.Text = "";
            emailBox.Text = "";
            phoneBox.Text = "";

        }

        protected void sendButt_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conString))
            {
                SqlCommand cmd = new SqlCommand("insert into userDet (userName,gender,password,email,phone,permission,imageUrl,address) values (@userName,@gender,@password,@email,@phone,@permission,@imageUrl,@address)", con);
                cmd.Parameters.AddWithValue("@userName", usernameBox.Text);
                cmd.Parameters.AddWithValue("@gender", genderlist.Text);
                cmd.Parameters.AddWithValue("@password", passBox.Text);
                cmd.Parameters.AddWithValue("@email", emailBox.Text);
                cmd.Parameters.AddWithValue("@phone", phoneBox.Text);
                cmd.Parameters.AddWithValue("@permission",0);
                
                if (uploadImage.HasFile)
                {
                    string[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                    if (Array.IndexOf(allowedExtensions, Path.GetExtension(uploadImage.FileName)) != -1)
                    {
                        uploadImage.PostedFile.SaveAs(Server.MapPath("~/profileImage/" + uploadImage.FileName));
                    }
                }
                cmd.Parameters.AddWithValue("@imageUrl", uploadImage.FileName);
                cmd.Parameters.AddWithValue("@address", addresBox.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                //con.Close();
                passBox.Text = "";
                pass2Box.Text = "";
                usernameBox.Text = "";
                addresBox.Text = "";
                emailBox.Text = "";
                phoneBox.Text = "";
            }
            string script = "alert(\"ההרשמה בוצעה בהצלחה\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            Response.Redirect("~/logInPage.aspx");
        }
    }
}