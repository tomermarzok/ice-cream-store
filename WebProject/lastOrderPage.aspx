<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="lastOrderPage.aspx.cs" Inherits="WebProject.lastOrderPage" %>
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
                <asp:SqlDataSource ID="SDlastOrder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orders] WHERE ([clientId] = @clientId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="clientId" SessionField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="returnButt" runat="server" OnClick="returnButt_Click" Text="חזור" Width="105px" />
                <asp:Label ID="lastOrderTableLb" runat="server" Text="טבלת הזמנות אחרונות"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GVcontactDet" HorizontalAlign="Center" runat="server" Height="209px" Width="687px" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SDlastOrder">
                    <Columns>
                        <asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="clientName" HeaderText="clientName" SortExpression="clientName" />
                        <asp:BoundField DataField="clientId" HeaderText="clientId" SortExpression="clientId" />
                        <asp:BoundField DataField="sumOfOrder" HeaderText="sumOfOrder" SortExpression="sumOfOrder" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="itemsLastOrderPage.aspx?id={0}" DataTextField="Id" HeaderText="קישור לפרטי ההזמנה" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
