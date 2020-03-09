<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="searchPage.aspx.cs" Inherits="WebProject.searchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            background-color: #F0F0F0;
            margin-left: 0px;
            
        }
        .auto-style4 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="searchLb" runat="server" Text="חיפוש מתקדם"></asp:Label>
            <br />
            <asp:CheckBox ID="op1Box" runat="server" AutoPostBack="True" OnCheckedChanged="op1Box_CheckedChanged" Text="הצגת פרטי ההזמנה ללקוח שהזמין מעל כמות מסויימת של מוצרים" TextAlign="Left" />
            <br />
            <div class="auto-style4">
                <asp:CheckBox ID="op2Box" runat="server" AutoPostBack="True" OnCheckedChanged="op2Box_CheckedChanged" Text="הצגת פרטי לקוח שביצע הזמנות מעל סכום מסויים" TextAlign="Left" />
            </div>
            <asp:CheckBox ID="op3Box" runat="server" AutoPostBack="True" OnCheckedChanged="op3Box_CheckedChanged" Text="הצגת פרטי הזמנה  שלקוח הזמין גלידה מסויימת" TextAlign="Left" />
            <br />
            <asp:Button ID="SearchButton" runat="server" Text="חיפוש" OnClick="SearchButton_Click" Width="46px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="inputBox" runat="server"></asp:TextBox>
            <asp:Label ID="wordLabel" runat="server"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SDNumOfProduct" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT orders.clientName, orders.clientId, orders.sumOfOrder, itemsOrder.amountOfProduct FROM itemsOrder INNER JOIN orders ON itemsOrder.orderId = orders.Id WHERE (itemsOrder.amountOfProduct &gt; @amount)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="inputBox" Name="amount" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SDSumPrice" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT userDet.Id AS userid, userDet.userName, userDet.[gender ], userDet.email, userDet.phone, userDet.[address ], orders.Id AS orderid, orders.sumOfOrder FROM userDet INNER JOIN orders ON userDet.Id = orders.clientId WHERE (orders.sumOfOrder &gt; @sum)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="inputBox" Name="sum" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SDIceClientDetails" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT orders.clientName, orders.clientId, orders.sumOfOrder, itemsOrder.productName FROM orders INNER JOIN itemsOrder ON orders.Id = itemsOrder.orderId WHERE (itemsOrder.productName LIKE N'%' + @name + N'%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="inputBox" Name="name" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
            <asp:GridView ID="gridTable" HorizontalAlign="Center" runat="server">
            </asp:GridView>
            <br />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="resetButt" runat="server" OnClick="resetButt_Click" Text="ניקוי טבלה" Visible="False" />
        </td>
    </tr>
</table>
</asp:Content>
