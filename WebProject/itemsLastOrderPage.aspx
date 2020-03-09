<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="itemsLastOrderPage.aspx.cs" Inherits="WebProject.itemsLastOrderPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">




        .auto-style3 {
            width: 100%;
            background-color: #F0F0F0;
            margin-left: 0px;

        }
        .auto-style4 {
            height: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4">
                <asp:SqlDataSource ID="SDltemOrder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [orderId], [productName], [amountOfProduct] FROM [itemsOrder] WHERE ([orderId] = @orderId)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="orderId" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="returnButt" runat="server" OnClick="returnButt_Click" Text="חזור" Width="105px" />
                <asp:Label ID="lastOrderTableLb" runat="server" Text="טבלת הזמנות אחרונות"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GVcontactDet" HorizontalAlign="Center" runat="server" Height="209px" Width="687px" AutoGenerateColumns="False" DataSourceID="SDltemOrder">
                    <Columns>
                        <asp:BoundField DataField="orderId" HeaderText="orderId" SortExpression="orderId" />
                        <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
                        <asp:BoundField DataField="amountOfProduct" HeaderText="amountOfProduct" SortExpression="amountOfProduct" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
