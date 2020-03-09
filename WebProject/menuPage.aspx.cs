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

    public partial class WebForm1 : System.Web.UI.Page
    {
        int totalsum = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["logged"] as string;
            string id = Session["id"] as string;
            if (username != null)
            {
                Panel1.Visible = true;
                confiOrderLB.Visible = false;
                showOrderLB.Visible = true;
                shopListButt.Visible = true;
                remark1.Visible = true;
                remark2.Visible = true;
                remark3.Visible = true;
                GridView priceberry = new GridView();
                priceberry.DataSource = SDberry;
                priceberry.DataBind();
                if (priceberry.Rows.Count != 0)
                {
                    LBberryPriceShow.Text = "₪" + priceberry.Rows[0].Cells[0].Text + " המחיר ";

                }
                else
                {
                    LBberryPriceShow.Text = "SOLD OUT";
                    berrylist.Visible = false;
                }
                GridView carmelprice = new GridView();
                carmelprice.DataSource = SDcarmel;
                carmelprice.DataBind();
                if (carmelprice.Rows.Count != 0)
                {
                    lbcarmelPriceshow.Text = "₪" + carmelprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    lbcarmelPriceshow.Text = "SOLD OUT";
                    carmelList.Visible = false;
                }
                GridView cheeseprice = new GridView();
                cheeseprice.DataSource = SDcheese;
                cheeseprice.DataBind();
                if (cheeseprice.Rows.Count != 0)
                {
                    cheesePriceshow.Text = "₪" + cheeseprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    cheesePriceshow.Text = "SOLD OUT";
                    carmelList.Visible = false;
                }
                GridView cherryprice = new GridView();
                cherryprice.DataSource = SDcherry;
                cherryprice.DataBind();
                if (cherryprice.Rows.Count != 0)
                {
                    LBcherryPriceShow.Text = "₪" + cherryprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBcherryPriceShow.Text = "SOLD OUT";
                    cherryList.Visible = false;
                }
                GridView chocolateprice = new GridView();
                chocolateprice.DataSource = SDchocolate;
                chocolateprice.DataBind();
                if (chocolateprice.Rows.Count != 0)
                {
                    LBchocolatePriceShow.Text = "₪" + chocolateprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBchocolatePriceShow.Text = "SOLD OUT";
                    chocolateList.Visible = false;
                }
                GridView coffeeprice = new GridView();
                coffeeprice.DataSource = SDcoffe;
                coffeeprice.DataBind();
                if (coffeeprice.Rows.Count != 0)
                {
                    LBcoffePriceShow.Text = "₪" + coffeeprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBcoffePriceShow.Text = "SOLD OUT";
                    coffeList.Visible = false;
                }
                GridView cookiedoughprice = new GridView();
                cookiedoughprice.DataSource = SDcookiedough;
                cookiedoughprice.DataBind();
                if (cookiedoughprice.Rows.Count != 0)
                {
                    LBcookiedoughPriceShow.Text = "₪" + cookiedoughprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBcookiedoughPriceShow.Text = "SOLD OUT";
                    cookieddoughList.Visible = false;
                }
                GridView gumprice = new GridView();
                gumprice.DataSource = SDgum;
                gumprice.DataBind();
                if (gumprice.Rows.Count != 0)
                {
                    LBgumPriceShow.Text = "₪" + gumprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBgumPriceShow.Text = "SOLD OUT";
                    gumlist.Visible = false;
                }
                GridView lemonprice = new GridView();
                lemonprice.DataSource = SDlemon;
                lemonprice.DataBind();
                if (lemonprice.Rows.Count != 0)
                {
                    LBlemonPriceShow.Text = "₪" + lemonprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBlemonPriceShow.Text = "SOLD OUT";
                    gumlist.Visible = false;
                }
                GridView mintChipprice = new GridView();
                mintChipprice.DataSource = SDmintChip;
                mintChipprice.DataBind();
                if (mintChipprice.Rows.Count != 0)
                {
                    LBmintChipPriceShow.Text = "₪" + mintChipprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBmintChipPriceShow.Text = "SOLD OUT";
                    mintChipList.Visible = false;
                }
                GridView mochaprice = new GridView();
                mochaprice.DataSource = SDmocha;
                mochaprice.DataBind();
                if (mochaprice.Rows.Count != 0)
                {
                    LBmochaPriceShow.Text = "₪" + mochaprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBmochaPriceShow.Text = "SOLD OUT";
                    mochalist.Visible = false;
                }
                GridView oreoprice = new GridView();
                oreoprice.DataSource = SDoreo;
                oreoprice.DataBind();
                if (oreoprice.Rows.Count != 0)
                {
                    LBoreoPriceShow.Text = "₪" + oreoprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBoreoPriceShow.Text = "SOLD OUT";
                    oreolist.Visible = false;
                }
                GridView toffeprice = new GridView();
                toffeprice.DataSource = SDtoffe;
                toffeprice.DataBind();
                if (toffeprice.Rows.Count != 0)
                {
                    LBtoffePriceShow.Text = "₪" + toffeprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBtoffePriceShow.Text = "SOLD OUT";
                    toffelist.Visible = false;
                }
                GridView vanilChiprice = new GridView();
                vanilChiprice.DataSource = SDvanilChip;
                vanilChiprice.DataBind();
                if (vanilChiprice.Rows.Count != 0)
                {
                    LBvanilChipPriceShow.Text = "₪" + vanilChiprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBvanilChipPriceShow.Text = "SOLD OUT";
                    vanilChiplist.Visible = false;
                }
                GridView chocoCakeprice = new GridView();
                chocoCakeprice.DataSource = SDchococake;
                chocoCakeprice.DataBind();
                if (chocoCakeprice.Rows.Count != 0)
                {
                    LBchococakePriceShow.Text = "₪" + chocoCakeprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBchococakePriceShow.Text = "SOLD OUT";
                    chococakelist.Visible = false;
                }
                GridView chorosprice = new GridView();
                chorosprice.DataSource = SDchoros;
                chorosprice.DataBind();
                if (chorosprice.Rows.Count != 0)
                {
                    LBchorosPriceShow.Text = "₪" + chorosprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBchorosPriceShow.Text = "SOLD OUT";
                    choroslist.Visible = false;
                }
                GridView creapprice = new GridView();
                creapprice.DataSource = SDcreap;
                creapprice.DataBind();
                if (creapprice.Rows.Count != 0)
                {
                    LBcreapPriceShow.Text = "₪" + creapprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBcreapPriceShow.Text = "SOLD OUT";
                    creaplist.Visible = false;
                }
                GridView pancakeprice = new GridView();
                pancakeprice.DataSource = SDpancake;
                pancakeprice.DataBind();
                if (pancakeprice.Rows.Count != 0)
                {
                    LBpancakePriceShow.Text = "₪" + pancakeprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBpancakePriceShow.Text = "SOLD OUT";
                    pancakelist.Visible = false;
                }
                GridView vafelprice = new GridView();
                vafelprice.DataSource = SDvafel;
                vafelprice.DataBind();
                if (vafelprice.Rows.Count != 0)
                {
                    LBvafelPriceShow.Text = "₪" + vafelprice.Rows[0].Cells[0].Text + " המחיר ";
                }
                else
                {
                    LBvafelPriceShow.Text = "SOLD OUT";
                    vafellist.Visible = false;
                }
            }

            else
            {
                string script = "alert(\"המחירים מוצגים אך ורק לחברי המועדון\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                berrylist.Visible = false;
                cheeseList.Visible = false;
                carmelList.Visible = false;
                cherryList.Visible = false;
                chocolateList.Visible = false;
                coffeList.Visible = false;
                cookieddoughList.Visible = false;
                gumlist.Visible = false;
                lemonlist.Visible = false;
                mintChipList.Visible = false;
                mochalist.Visible = false;
                oreolist.Visible = false;
                toffelist.Visible = false;
                vanilChiplist.Visible = false;

                chococakelist.Visible = false;
                choroslist.Visible = false;
                creaplist.Visible = false;
                pancakelist.Visible = false;
                vafellist.Visible = false;



            }






        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void shopListButt_Click(object sender, EventArgs e)
        {
            //else null all the list
            int sum = 0;
            if (berrylist.SelectedValue != "0")
            {
                GridView priceberry = new GridView();
                priceberry.DataSource = SDberry;
                priceberry.DataBind();
                if (priceberry.Rows.Count != 0)
                {
                    sum = int.Parse(priceberry.Rows[0].Cells[0].Text);
                    int totalsumberry = sum * int.Parse(berrylist.SelectedValue);
                    totalsum += totalsumberry;
                    buyBerry.Text = "גלידת פירות יער מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + berrylist.SelectedValue + " סכום כולל" + ": " + totalsumberry.ToString();
                    buyBerry.Visible = true;
                }
            }
            else buyBerry.Visible = false;

            if (carmelList.SelectedValue != "0")
            {
                GridView carmelprice = new GridView();
                carmelprice.DataSource = SDcarmel;
                carmelprice.DataBind();
                if (carmelprice.Rows.Count != 0)
                {
                    sum = int.Parse(carmelprice.Rows[0].Cells[0].Text);
                    int totalcarmel = sum * int.Parse(carmelList.SelectedValue);
                    totalsum += totalcarmel;
                    buyCarmel.Text = "גלידת כרמל מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + carmelList.SelectedValue + " סכום כולל" + ": " + totalcarmel.ToString();
                    buyCarmel.Visible = true;
                }
            }
            else buyCarmel.Visible = false;


            if (cheeseList.SelectedValue != "0")
            {
                GridView cheeseprice = new GridView();
                cheeseprice.DataSource = SDcheese;
                cheeseprice.DataBind();
                if (cheeseprice.Rows.Count != 0)
                {
                    sum = int.Parse(cheeseprice.Rows[0].Cells[0].Text);
                    int totalcheese = sum * int.Parse(cheeseList.SelectedValue);
                    totalsum += totalcheese;
                    buyCheese.Text = "גלידת שמנת מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + cheeseList.SelectedValue + " סכום כולל" + ": " + totalcheese.ToString();
                    buyCheese.Visible = true;
                }
            }
            else buyCheese.Visible = false;

            if (cherryList.SelectedValue != "0")
            {
                GridView cherryprice = new GridView();
                cherryprice.DataSource = SDcherry;
                cherryprice.DataBind();
                if (cherryprice.Rows.Count != 0)
                {
                    sum = int.Parse(cherryprice.Rows[0].Cells[0].Text);
                    int totalcherry = sum * int.Parse(cherryList.SelectedValue);
                    totalsum += totalcherry;
                    buyCherry.Text = "גלידת דובדבן מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + cherryList.SelectedValue + " סכום כולל" + ": " + totalcherry.ToString();
                    buyCherry.Visible = true;
                }
            }
            else buyCherry.Visible = false;


            if (chocolateList.SelectedValue != "0")
            {
                GridView chocolateprice = new GridView();
                chocolateprice.DataSource = SDchocolate;
                chocolateprice.DataBind();
                if (chocolateprice.Rows.Count != 0)
                {

                    sum = int.Parse(chocolateprice.Rows[0].Cells[0].Text);
                    int totatlChocolate = sum * int.Parse(chocolateList.SelectedValue);
                    totalsum += totatlChocolate;
                    buyChocolate.Text = "גלידת שוקולד מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + chocolateList.SelectedValue + " סכום כולל" + ": " + totatlChocolate.ToString();
                    buyChocolate.Visible = true;
                }
            }
            else buyChocolate.Visible = false;


            if (coffeList.SelectedValue != "0")
            {
                GridView coffeeprice = new GridView();
                coffeeprice.DataSource = SDcoffe;
                coffeeprice.DataBind();
                if (coffeeprice.Rows.Count != 0)
                {
                    sum = int.Parse(coffeeprice.Rows[0].Cells[0].Text);
                    int totalcoffe = sum * int.Parse(coffeList.SelectedValue);
                    totalsum += totalcoffe;
                    buyCoffe.Text = "גלידת קפה מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + coffeList.SelectedValue + " סכום כולל" + ": " + totalcoffe.ToString();
                    buyCoffe.Visible = true;
                }
            }
            else buyCoffe.Visible = false;

            if (cookieddoughList.SelectedValue != "0")
            {

                GridView cookiedoughprice = new GridView();
                cookiedoughprice.DataSource = SDcookiedough;
                cookiedoughprice.DataBind();
                if (cookiedoughprice.Rows.Count != 0)
                {
                    sum = int.Parse(cookiedoughprice.Rows[0].Cells[0].Text);
                    int totalCookie = sum * int.Parse(cookieddoughList.SelectedValue);
                    totalsum += totalCookie;
                    buyCookieDough.Text = "גלידת שמנת עוגיות מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + cookieddoughList.SelectedValue + " סכום כולל" + ": " + totalCookie.ToString();
                    buyCookieDough.Visible = true;
                }
            }
            else buyCookieDough.Visible = false;

            if (gumlist.SelectedValue != "0")
            {
                GridView gumprice = new GridView();
                gumprice.DataSource = SDgum;
                gumprice.DataBind();
                if (gumprice.Rows.Count != 0)
                {
                    sum = int.Parse(gumprice.Rows[0].Cells[0].Text);
                    int totalGum = sum * int.Parse(gumlist.SelectedValue);
                    totalsum += totalGum;
                    buyGum.Text = "גלידת מסטיק מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + gumlist.SelectedValue + " סכום כולל" + ": " + totalGum.ToString();
                    buyGum.Visible = true;
                }
            }
            else buyGum.Visible = false;

            if (lemonlist.SelectedValue != "0")
            {
                GridView lemonprice = new GridView();
                lemonprice.DataSource = SDlemon;
                lemonprice.DataBind();
                if (lemonprice.Rows.Count != 0)
                {
                    sum = int.Parse(lemonprice.Rows[0].Cells[0].Text);
                    int totalLemon = sum * int.Parse(lemonlist.SelectedValue);
                    totalsum += totalLemon;
                    buyLemon.Text = "גלידת לימון מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + lemonlist.SelectedValue + " סכום כולל" + ": " + totalLemon.ToString();
                    buyLemon.Visible = true;
                }
            }
            else buyLemon.Visible = false;

            if (mintChipList.SelectedValue != "0")
            {
                GridView mintChipprice = new GridView();
                mintChipprice.DataSource = SDmintChip;
                mintChipprice.DataBind();
                if (mintChipprice.Rows.Count != 0)
                {
                    sum = int.Parse(mintChipprice.Rows[0].Cells[0].Text);
                    int totalMint = sum * int.Parse(mintChipList.SelectedValue);
                    totalsum += totalMint;
                    buyMintChip.Text = "גלידת מנטה עוגיות מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + mintChipList.SelectedValue + " סכום כולל" + ": " + totalMint.ToString();
                    buyMintChip.Visible = true;
                }
            }
            else buyMintChip.Visible = false;

            if (mochalist.SelectedValue != "0")
            {
                GridView mochaprice = new GridView();
                mochaprice.DataSource = SDmocha;
                mochaprice.DataBind();
                if (mochaprice.Rows.Count != 0)
                {
                    sum = int.Parse(mochaprice.Rows[0].Cells[0].Text);
                    int totalMocha = sum * int.Parse(mochalist.SelectedValue);
                    totalsum += totalMocha;
                    buyMocha.Text = "גלידת מוקה מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + mochalist.SelectedValue + " סכום כולל" + ": " + totalMocha.ToString();
                    buyMocha.Visible = true;
                }
            }
            else buyMocha.Visible = false;

            if (oreolist.SelectedValue != "0")
            {
                GridView oreoprice = new GridView();
                oreoprice.DataSource = SDoreo;
                oreoprice.DataBind();
                if (oreoprice.Rows.Count != 0)
                {
                    sum = int.Parse(oreoprice.Rows[0].Cells[0].Text);
                    int totaloreo = sum * int.Parse(oreolist.SelectedValue);
                    totalsum += totaloreo;
                    buyOreo.Text = "גלידת אוראו מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + oreolist.SelectedValue + " סכום כולל" + ": " + totaloreo.ToString();
                    buyOreo.Visible = true;
                }
            }
            else buyOreo.Visible = false;

            if (toffelist.SelectedValue != "0")
            {
                GridView toffeprice = new GridView();
                toffeprice.DataSource = SDtoffe;
                toffeprice.DataBind();
                if (toffeprice.Rows.Count != 0)
                {
                    sum = int.Parse(toffeprice.Rows[0].Cells[0].Text);
                    int totaltoffe = sum * int.Parse(toffelist.SelectedValue);
                    totalsum += totaltoffe;
                    buyToffe.Text = "גלידת טופי מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + toffelist.SelectedValue + " סכום כולל" + ": " + totaltoffe.ToString();
                    buyToffe.Visible = true;
                }
            }
            else buyToffe.Visible = false;

            if (vanilChiplist.SelectedValue != "0")
            {
                GridView vanilChiprice = new GridView();
                vanilChiprice.DataSource = SDvanilChip;
                vanilChiprice.DataBind();
                if (vanilChiprice.Rows.Count != 0)
                {
                    sum = int.Parse(vanilChiprice.Rows[0].Cells[0].Text);
                    int totalVanilChip = sum * int.Parse(vanilChiplist.SelectedValue);
                    totalsum += totalVanilChip;
                    buyVanilChip.Text = "גלידת וניל עוגיות מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + vanilChiplist.SelectedValue + " סכום כולל" + ": " + totalVanilChip.ToString();
                    buyVanilChip.Visible = true;
                }
            }
            else buyVanilChip.Visible = false;

            if (chococakelist.SelectedValue != "0")
            {
                GridView chocoCakeprice = new GridView();
                chocoCakeprice.DataSource = SDchococake;
                chocoCakeprice.DataBind();
                if (chocoCakeprice.Rows.Count != 0)
                {
                    sum = int.Parse(chocoCakeprice.Rows[0].Cells[0].Text);
                    int totalchococake = sum * int.Parse(chococakelist.SelectedValue);
                    totalsum += totalchococake;
                    buyChocoCake.Text = "סופלה שוקולד מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + chococakelist.SelectedValue + " סכום כולל" + ": " + totalchococake.ToString();
                    buyChocoCake.Visible = true;
                }
            }
            else buyChocoCake.Visible = false;


            if (choroslist.SelectedValue != "0")
            {
                GridView chorosprice = new GridView();
                chorosprice.DataSource = SDchoros;
                chorosprice.DataBind();
                if (chorosprice.Rows.Count != 0)
                {
                    sum = int.Parse(chorosprice.Rows[0].Cells[0].Text);
                    int totalChoros = sum * int.Parse(choroslist.SelectedValue);
                    totalsum += totalChoros;
                    buyChoros.Text = "צורוס מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + choroslist.SelectedValue + " סכום כולל" + ": " + totalChoros.ToString();
                    buyChoros.Visible = true;
                }
            }
            else buyChoros.Visible = false;


            if (creaplist.SelectedValue != "0")
            {
                GridView creapprice = new GridView();
                creapprice.DataSource = SDcreap;
                creapprice.DataBind();
                if (creapprice.Rows.Count != 0)
                {
                    sum = int.Parse(creapprice.Rows[0].Cells[0].Text);
                    int totalcreap = sum * int.Parse(creaplist.SelectedValue);
                    totalsum += totalcreap;
                    buyCreap.Text = "קרפ צרפתי מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + creaplist.SelectedValue + " סכום כולל" + ": " + totalcreap.ToString();
                    buyCreap.Visible = true;
                }
            }
            else buyCreap.Visible = false;


            if (pancakelist.SelectedValue != "0")
            {
                GridView pancakeprice = new GridView();
                pancakeprice.DataSource = SDpancake;
                pancakeprice.DataBind();
                if (pancakeprice.Rows.Count != 0)
                {
                    sum = int.Parse(pancakeprice.Rows[0].Cells[0].Text);
                    int totalpancake = sum * int.Parse(pancakelist.SelectedValue);
                    totalsum += totalpancake;
                    buypancake.Text = "פנקייק מחיר ליחידה" + ": " + sum.ToString() + " מספר יחידות" + ": " + pancakelist.SelectedValue + " סכום כולל" + ": " + totalpancake.ToString();
                    buypancake.Visible = true;
                }
            }
            else buypancake.Visible = false;


            if (vafellist.SelectedValue != "0")
            {
                GridView vafelprice = new GridView();
                vafelprice.DataSource = SDvafel;
                vafelprice.DataBind();
                if (vafelprice.Rows.Count != 0)
                {
                    sum = int.Parse(vafelprice.Rows[0].Cells[0].Text);
                    int totalVafel = sum * int.Parse(vafellist.SelectedValue);
                    totalsum += totalVafel;
                    buyvafel.Text += "וואפל בלגי מחיר ליחידה " + ":" + sum.ToString() + " מספר יחידות" + ": " + vafellist.SelectedValue + " סכום כולל" + ": " + totalVafel.ToString();
                    buyvafel.Visible = true;
                }

            }
            else buyvafel.Visible = false;

            if (totalsum == 0)
            {
                totalSumlb.Visible = false;
                showOrderLB.Visible = false;
                totalSumlb.Text = "לא נבחרו מוצרים כלל";
            }
            else
            {
                totalSumlb.Visible = true;
                showOrderLB.Visible = true;
                sumpricelb.Text = totalsum.ToString();
                totalSumlb.Text = "סכום הקנייה הוא " + ":" + totalsum;
            }
            if (totalsum != 0)
            {
                confiOrderLB.Visible = true;

            }
        }

        protected void confiOrderLB_Click(object sender, EventArgs e)
        {
            string id = Session["id"] as string;
            string username = Session["logged"] as string;
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conString))
            {
                SqlCommand cmd = new SqlCommand("insert into orders(clientName,clientId,sumOfOrder) values (@clientName,@clientId,@sumOfOrder)", con);
                cmd.Parameters.AddWithValue("@clientName", username);
                cmd.Parameters.AddWithValue("@clientId", int.Parse(id));
                cmd.Parameters.AddWithValue("@sumOfOrder", int.Parse(sumpricelb.Text));
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                ///send delivery by name , address and id , with time, sum of order
            }
            using (SqlConnection con = new SqlConnection(conString))
            {
                GridView OrderId = new GridView();
                OrderId.DataSource = SDorderId;
                OrderId.DataBind();
                if (berrylist.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBberryPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(berrylist.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                if (carmelList.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBbcarmelPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(carmelList.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }


                if (cheeseList.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBcheesePrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(cheeseList.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                if (cherryList.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBcherryPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(cherryList.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }


                if (chocolateList.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBchocolatePrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(chocolateList.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }


                if (coffeList.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBcoffePrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(coffeList.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                if (cookieddoughList.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBcookiedoughPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(cookieddoughList.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }

                if (gumlist.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBgumPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(gumlist.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                if (lemonlist.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBlemonPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(lemonlist.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                if (mintChipList.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBmintChipPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(mintChipList.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                if (mochalist.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBmochaPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(mochalist.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                if (oreolist.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBoreoPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(oreolist.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                if (toffelist.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBtoffePrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(toffelist.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                if (vanilChiplist.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBvanilChipPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(vanilChiplist.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                if (chococakelist.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBchococakePrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(chococakelist.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }


                if (choroslist.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBchorosPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(choroslist.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }


                if (creaplist.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBcreapPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(creaplist.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }


                if (pancakelist.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBpancakePrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(pancakelist.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }


                if (vafellist.SelectedValue != "0")
                {
                    SqlCommand cmd = new SqlCommand("insert into itemsOrder(orderId,productName,amountOfProduct) values (@orderId,@productName,@amountOfProduct)", con);
                    cmd.Parameters.AddWithValue("@orderId", int.Parse(OrderId.Rows[0].Cells[0].Text));
                    cmd.Parameters.AddWithValue("@productName", LBvafelPrice.Text);
                    cmd.Parameters.AddWithValue("@amountOfProduct", int.Parse(vafellist.SelectedValue));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                string script = "alert(\"ההזמנה בוצעה בהצלחה "+ username + "\\n מספר הזמנה" + OrderId.Rows[0].Cells[0].Text+"\");";
                ScriptManager.RegisterStartupScript(this, GetType(),"ServerControlScript", script, true);
            }
        }
    } 
}


