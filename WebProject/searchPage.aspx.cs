using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace WebProject
{
    public partial class searchPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void op1Box_CheckedChanged(object sender, EventArgs e)
        {
            op2Box.Checked = false;
            op3Box.Checked = false;
            wordLabel.Text = "הזן מספר מוצרים ";

        }

        protected void op2Box_CheckedChanged(object sender, EventArgs e)
        {
            op1Box.Checked = false;
            op3Box.Checked = false;
            wordLabel.Text = "הזן סכום ";

        }

        protected void op3Box_CheckedChanged(object sender, EventArgs e)
        {
            op1Box.Checked = false;
            op2Box.Checked = false;
            wordLabel.Text = "הזן שם מוצר ";



        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            int n;
            string str;
            int.TryParse(inputBox.Text, out n);

            if (op1Box.Checked == true)
            {
                if (n > 0)
                {
                    gridTable.Visible = true;
                    gridTable.DataSource = SDNumOfProduct;
                    gridTable.DataBind();
                    if (gridTable.Rows.Count == 0)
                    {
                        resetButt.Text = "לא נמצאו תוצאות";
                    }
                    else
                    {
                        resetButt.Text = " ";
                        resetButt.Visible = false;

                    }
                    resetButt.Visible = true;
                }
                else
                {
                    resetButt.Text = " חובה להזין מספר";
                    resetButt.Visible = true;
                }
            }

            if (op2Box.Checked == true)
            {
                if (n > 0)
                {
                    gridTable.Visible = true;
                    gridTable.DataSource = SDSumPrice;
                    gridTable.DataBind();
                    if (gridTable.Rows.Count == 0)
                    {
                        resetButt.Text = "לא נמצאו תוצאות";
                    }
                    else
                    {
                        resetButt.Text = " ";
                        resetButt.Visible = false;

                    }
                    resetButt.Visible = true;
                }
                else
                {
                    resetButt.Text = " חובה להזין מספר";
                    resetButt.Visible = true;
                }


            }
            if (op3Box.Checked == true)
            {
                gridTable.Visible = true;
                gridTable.DataSource = SDIceClientDetails;
                gridTable.DataBind();
                if (gridTable.Rows.Count == 0)
                {
                    resetButt.Text = "לא נמצאו תוצאות";
                }
                else
                {
                    resetButt.Text = " ";
                    resetButt.Visible = false;

                }
                resetButt.Visible = true;
            }
        }
  
    

        protected void resetButt_Click(object sender, EventArgs e)
        {
            gridTable.DataSource = null;
            gridTable.Visible = false;
            inputBox.Text = " ";
        }
    }
}