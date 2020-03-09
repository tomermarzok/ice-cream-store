<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="mangerOpt.aspx.cs" Inherits="WebProject.mangerOpt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            background-color: #F0F0F0;
            margin-left: 0px;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="itemsOrderButt" runat="server" Text="פריטים שהוזמנו" OnClick="itemsOrderButt_Click" Width="96px" />
                <asp:Button ID="ordersButt" runat="server" Text="הזמנות" OnClick="ordersButt_Click" Width="89px" />
                <asp:Button ID="tableMember" runat="server" Text="חברי מועדון" OnClick="tableMember_Click" />
                <asp:Button ID="tableIceCream" runat="server" Text="גלידות" OnClick="tableIceCream_Click" Width="91px" />
                <asp:Button ID="tableDessert" runat="server" Text="קינוחים" OnClick="tableDessert_Click" Width="91px" />
                <asp:Button ID="tableContact" runat="server" OnClick="tableContact_Click" Text="צור קשר" Width="91px" />
                <asp:Label ID="tableSelect" runat="server" Text="הצגת טבלאות"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SDcontactDet" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [contactDetails]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SDdessertPrice" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [dessertPrice]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SDorder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orders]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SDitemOrder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [orderId], [productName], [amountOfProduct] FROM [itemsOrder]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SDicePrice" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [IcePrice]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SDuserDet" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userDet]"></asp:SqlDataSource>
                <asp:GridView ID="GVcontactDet" HorizontalAlign="Center" runat="server" Height="209px" Width="687px">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
