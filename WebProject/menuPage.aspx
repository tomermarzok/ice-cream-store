<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="menuPage.aspx.cs" Inherits="WebProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style7 {
        width: 317px;
    }
        .auto-style8 {
        height: 20px;
        width: 317px;
    }
    .auto-style9 {
        height: 20px;
        width: 318px;
    }
    .auto-style10 {
        width: 318px;
    }
    .auto-style11 {
        height: 20px;
        width: 319px;
    }
    .auto-style12 {
        width: 319px;
    }
    .auto-style13 {
        width: 317px;
        height: 214px;
    }
    .auto-style14 {
        width: 318px;
        height: 214px;
    }
    .auto-style15 {
        width: 319px;
        height: 214px;
    }
        .auto-style16 {
            width: 318px;
            text-align: center;
        }
        .auto-style17 {
            width: 317px;
            height: 46px;
        }
        .auto-style18 {
            width: 318px;
            height: 46px;
        }
        .auto-style19 {
            width: 319px;
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table class="auto-style3" style="background-color: #FFFFFF">
        <tr>
            <td class="auto-style4" colspan="3">
                <br />
                <asp:Image ID="titleIce" runat="server" ImageUrl="~/picture/icetype.png" />
                <br />
                <asp:Label ID="remark1" runat="server" Text="המחירים הם עבור אריזה של כ-200 גרם*" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="remark2" runat="server" Text="הקנייה מוגבלת עד ל-5 אריזות**" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="cheese" runat="server" Text="שמנת"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:Label ID="carmelLab" runat="server" Text="כרמל"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:Label ID="berrylab" runat="server" Text="פירות יער"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Image ID="cheeseImg" runat="server" ImageUrl="~/icecream/cheese.jpg" />
            </td>
            <td class="auto-style14">
                <asp:Image ID="caemelImg" runat="server" ImageUrl="~/icecream/carmel.jpg" />
            </td>
            <td class="auto-style15">
                <asp:Image ID="berryImg" runat="server" ImageUrl="~/icecream/berry.jpg" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="cheesePriceshow" runat="server"></asp:Label>
                &nbsp;<br />
                <asp:DropDownList ID="cheeseList" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:SqlDataSource ID="SDcheese" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBcheesePrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBcheesePrice" runat="server" Visible="False">cheese</asp:Label>
            </td>
            <td class="auto-style9">&nbsp;<asp:Label ID="lbcarmelPriceshow" runat="server"></asp:Label>
                &nbsp;<br />
                <asp:DropDownList ID="carmelList" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SDcarmel" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBbcarmelPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBbcarmelPrice" runat="server" Visible="False">carmel</asp:Label>
            </td>
            <td class="auto-style11">
                <asp:Label ID="LBberryPriceShow" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SDberry" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBberryPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBberryPrice" runat="server" Visible="False">berry</asp:Label>
                <asp:DropDownList ID="berrylist" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">קפה</td>
            <td class="auto-style10">שוקולד</td>
            <td class="auto-style12">דובדבנים</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Image ID="coffeImg" runat="server" ImageUrl="~/icecream/coffee.jpg" />
            </td>
            <td class="auto-style10">
                <asp:Image ID="chocolateImg" runat="server" ImageUrl="~/icecream/chocolate.jpg" />
            </td>
            <td class="auto-style12">
                <asp:Image ID="cherryImg" runat="server" ImageUrl="~/icecream/cherry.jpg" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="LBcoffePriceShow" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SDcoffe" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBcoffePrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBcoffePrice" runat="server" Visible="False">coffee</asp:Label>
                <asp:DropDownList ID="coffeList" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="auto-style10">
                <asp:Label ID="LBchocolatePriceShow" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SDchocolate" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBchocolatePrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBchocolatePrice" runat="server" Visible="False">chocolate</asp:Label>
                <asp:DropDownList ID="chocolateList" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="auto-style12">
                <asp:Label ID="LBcherryPriceShow" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SDcherry" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBcherryPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBcherryPrice" runat="server" Visible="False">cherry</asp:Label>
                <asp:DropDownList ID="cherryList" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">לימון</td>
            <td class="auto-style9">מסטיק</td>
            <td class="auto-style11">שמנת עוגיות</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Image ID="lemonImg" runat="server" ImageUrl="~/icecream/lemon.jpg" />
            </td>
            <td class="auto-style10">
                <asp:Image ID="gumImg" runat="server" ImageUrl="~/icecream/gum.jpg" />
            </td>
            <td class="auto-style12">
                <asp:Image ID="cookiedoughImg" runat="server" ImageUrl="~/icecream/cookiedoughcc_3.jpg" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="LBlemonPriceShow" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SDlemon" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBlemonPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBlemonPrice" runat="server" Visible="False">lemon</asp:Label>
                <asp:DropDownList ID="lemonlist" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="auto-style10">
                <asp:Label ID="LBgumPriceShow" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SDgum" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBgumPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBgumPrice" runat="server" Visible="False">gum</asp:Label>
                <asp:DropDownList ID="gumlist" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                <asp:Label ID="LBcookiedoughPriceShow" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SDcookiedough" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBcookiedoughPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBcookiedoughPrice" runat="server" Visible="False">cookiedoug</asp:Label>
                <asp:DropDownList ID="cookieddoughList" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">אוראו</td>
            <td class="auto-style10">מוקה</td>
            <td class="auto-style12">מנטה עוגיות</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Image ID="oreoImg" runat="server" ImageUrl="~/icecream/oreo.jpg" />
            </td>
            <td class="auto-style10">
                <asp:Image ID="mochaImg" runat="server" ImageUrl="~/icecream/mocha.jpg" />
            </td>
            <td class="auto-style12">
                <asp:Image ID="mintChipImg" runat="server" ImageUrl="~/icecream/mintChip.jpg" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="LBoreoPriceShow" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SDoreo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBoreoPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBoreoPrice" runat="server" Visible="False">oreo</asp:Label>
                <asp:DropDownList ID="oreolist" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="auto-style10">
                <asp:Label ID="LBmochaPriceShow" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SDmocha" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBmochaPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBmochaPrice" runat="server" Visible="False">mocha</asp:Label>
                <asp:DropDownList ID="mochalist" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="auto-style12">
                <asp:Label ID="LBmintChipPriceShow" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="SDmintChip" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBmintChipPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBmintChipPrice" runat="server" Visible="False">mintChip</asp:Label>
                <asp:DropDownList ID="mintChipList" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">וניל עוגיות</td>
            <td class="auto-style12">טופי</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:Image ID="vanilchipImg" runat="server" ImageUrl="~/icecream/vanilChip.jpg" />
            </td>
            <td class="auto-style11">
                <asp:Image ID="toffeImg" runat="server" ImageUrl="~/icecream/toffe.jpg" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="LBvanilChipPriceShow" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SDvanilChip" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBvanilChipPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBvanilChipPrice" runat="server" Visible="False">vanilChip</asp:Label>
                <asp:DropDownList ID="vanilChiplist" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                <asp:Label ID="LBtoffePriceShow" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SDtoffe" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [IcePrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBtoffePrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="LBtoffePrice" runat="server" Visible="False">toffe</asp:Label>
                <asp:DropDownList ID="toffelist" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Image ID="dessertTitle" runat="server" ImageUrl="~/picture/desertTitle.png" Width="311px" />
                <br />
                <asp:Label ID="remark3" runat="server" Text="הקינוחים מגיעים עם כדור גלידה שוקולד בתוספת קצפת ומגוון רטבים***" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">קרפ צרפתי</td>
            <td class="auto-style10">צ&#39;ורוס</td>
            <td class="auto-style12">סופלה</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Image ID="creapImg" runat="server" Height="210px" ImageUrl="~/קינוחים/creap.jpg" Width="210px" />
            </td>
            <td class="auto-style10">
                <asp:Image ID="chorosImg" runat="server" Height="210px" ImageUrl="~/קינוחים/choros.jpg" Width="210px" />
            </td>
            <td class="auto-style12">
                <asp:Image ID="sufleImg" runat="server" Height="210px" ImageUrl="~/קינוחים/chocolate.jpg" Width="210px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="LBcreapPriceShow" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SDcreap" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [dessertPrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBcreapPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="LBcreapPrice" runat="server" Visible="False">creap</asp:Label>
                <asp:DropDownList ID="creaplist" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style10">
                <asp:Label ID="LBchorosPriceShow" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SDchoros" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [dessertPrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBchorosPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="LBchorosPrice" runat="server" Visible="False">choros</asp:Label>
                <asp:DropDownList ID="choroslist" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                <asp:Label ID="LBchococakePriceShow" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SDchococake" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [dessertPrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBchococakePrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="LBchococakePrice" runat="server" Visible="False">chococake</asp:Label>
                <asp:DropDownList ID="chococakelist" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">וואפל-בלגי</td>
            <td class="auto-style11">פנקייק</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">
                <asp:Image ID="vafelImg" runat="server" Height="210px" ImageUrl="~/קינוחים/vafel.jpg" Width="210px" />
            </td>
            <td class="auto-style12">
                <asp:Image ID="pancakeImg" runat="server" Height="210px" ImageUrl="~/קינוחים/pancake.jpg" Width="210px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="LBvafelPriceShow" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SDvafel" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [dessertPrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBvafelPrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="LBvafelPrice" runat="server" Visible="False">vafel</asp:Label>
                <asp:DropDownList ID="vafellist" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                <asp:Label ID="LBpancakePriceShow" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SDpancake" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [price] FROM [dessertPrice] WHERE ([name] LIKE '%' + @name + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="LBpancakePrice" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="LBpancakePrice" runat="server" Visible="False">pancake</asp:Label>
                <asp:DropDownList ID="pancakelist" runat="server">
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style18">
                <asp:Label ID="showOrderLB" runat="server" Text="להצגת רשימת הקניות" Visible="False"></asp:Label>
                <br />
                <asp:Button ID="shopListButt" runat="server" OnClick="shopListButt_Click" Text="לחץ כאן" Visible="False" />
            </td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style16">
                <br />
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Label ID="buyBerry" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyCarmel" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyCheese" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyCherry" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyChocolate" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyCoffe" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyCookieDough" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyGum" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyLemon" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyMintChip" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyMocha" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyOreo" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyToffe" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyVanilChip" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyChocoCake" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyChoros" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyCreap" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buypancake" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="buyvafel" runat="server" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="totalSumlb" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="sumpricelb" runat="server" Text="sumprice" Visible="False"></asp:Label>
                </asp:Panel>
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="confiOrderLB" runat="server" OnClick="confiOrderLB_Click" Text="אישור הזמנה" Visible="False" />
                <br />
                <asp:SqlDataSource ID="SDorderId" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id] FROM [orders] WHERE (([clientId] = @clientId) AND ([clientName] = @clientName) AND ([sumOfOrder] = @sumOfOrder))">
                    <SelectParameters>
                        <asp:SessionParameter Name="clientId" SessionField="id" Type="Int32" />
                        <asp:SessionParameter Name="clientName" SessionField="logged" Type="String" />
                        <asp:ControlParameter ControlID="sumpricelb" Name="sumOfOrder" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
                <br />
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
    </table>



</asp:Content>
