<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="ordersTableEdit.aspx.cs" Inherits="WebProject.ordersTableEdit" %>
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
                <asp:Button ID="returnButt" runat="server" OnClick="returnButt_Click" Text="חזור" Width="105px" />
                <asp:Label ID="contactTableLb" runat="server" Text="טבלת הזמנות"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SDcontactDet" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [contactDetails]" DeleteCommand="DELETE FROM contactDetails WHERE (Id = @id)" UpdateCommand="UPDATE contactDetails SET name = @name, email = @email, telephone = @telephone, text = @text, typeContact = @typeContact where id=@id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" />
                        <asp:Parameter Name="email" />
                        <asp:Parameter Name="telephone" />
                        <asp:Parameter Name="text" />
                        <asp:Parameter Name="typeContact" />
                        <asp:Parameter Name="id" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SDdessertPrice" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [dessertPrice]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SDorder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orders]" DeleteCommand="DELETE FROM orders where id=@id" UpdateCommand="UPDATE orders SET clientName = @clientName, clientId = @clientId, sumOfOrder = @sumOfOrder where id=@id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="clientName" />
                        <asp:Parameter Name="clientId" />
                        <asp:Parameter Name="sumOfOrder" />
                        <asp:Parameter Name="id" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SDitemOrder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [orderId], [productName], [amountOfProduct] FROM [itemsOrder]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SDicePrice" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [IcePrice]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SDuserDet" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userDet]" DeleteCommand="DELETE FROM userDet WHERE (Id = @id)" UpdateCommand="UPDATE userDet SET userName = @userName, password = @password, email = @email, phone = @phone, permission = @permission, imageUrl = @imageUrl where id=@id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="userName" />
                        <asp:Parameter Name="password" />
                        <asp:Parameter Name="email" />
                        <asp:Parameter Name="phone" />
                        <asp:Parameter Name="permission" />
                        <asp:Parameter Name="imageUrl" />
                        <asp:Parameter Name="id" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GVcontactDet" HorizontalAlign="Center" runat="server" Height="209px" Width="687px" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SDorder">
                    <Columns>
                        <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
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
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
