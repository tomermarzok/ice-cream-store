<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="iceCreamTableEdit.aspx.cs" Inherits="WebProject.iceCreamTableEdit" %>
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
                <asp:Label ID="icecreamTableLb" runat="server" Text="טבלת גלידות"></asp:Label>
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
                <asp:SqlDataSource ID="SDdessertPrice" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [dessertPrice]" DeleteCommand="DELETE FROM dessertPrice where id=@id" UpdateCommand="UPDATE dessertPrice SET name = @name, price = @price WHERE (Id = @id)">
                    <DeleteParameters>
                        <asp:Parameter Name="id" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" />
                        <asp:Parameter Name="price" />
                        <asp:Parameter Name="id" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SDicePrice" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [IcePrice]" DeleteCommand="DELETE FROM IcePrice WHERE (Id = @id)" UpdateCommand="UPDATE IcePrice SET name = @name, price = @price where id=@id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" />
                        <asp:Parameter Name="price" />
                        <asp:Parameter Name="id" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SDorder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orders]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SDitemOrder" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [orderId], [productName], [amountOfProduct] FROM [itemsOrder]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SDuserDet" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userDet]"></asp:SqlDataSource>
                <asp:GridView ID="GVcontactDet" HorizontalAlign="Center" runat="server" Height="209px" Width="687px" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SDicePrice">
                    <Columns>
                        <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
