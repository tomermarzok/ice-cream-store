<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="editDetails.aspx.cs" Inherits="WebProject.editDetails" %>
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
            <asp:SqlDataSource ID="SDdetailsOwner" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userDet] WHERE (([Id] = @Id) AND ([userName] LIKE '%' + @userName + '%'))" UpdateCommand="UPDATE userDet SET userName = @userName, password = @password, email = @email, phone = @phone, imageUrl = @imageUrl where id=@id">
                <SelectParameters>
                    <asp:SessionParameter Name="Id" SessionField="id" Type="Int32" />
                    <asp:SessionParameter Name="userName" SessionField="logged" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="userName" />
                    <asp:Parameter Name="password" />
                    <asp:Parameter Name="email" />
                    <asp:Parameter Name="phone" />
                    <asp:Parameter Name="imageUrl" />
                    <asp:Parameter Name="id" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Button ID="returnButt" runat="server" OnClick="returnButt_Click" Text="חזור" />
            <asp:Label ID="contactTableLb" runat="server" Text="עריכת פרטיים אישיים"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:GridView ID="GVcontactDet" HorizontalAlign="Center" runat="server" Height="209px" Width="687px" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SDdetailsOwner">
                <Columns>
                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                    <asp:BoundField DataField="gender " HeaderText="gender " SortExpression="gender " />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="permission" HeaderText="permission" SortExpression="permission" />
                    <asp:BoundField DataField="imageUrl" HeaderText="imageUrl" SortExpression="imageUrl" />
                    <asp:BoundField DataField="address " HeaderText="address " SortExpression="address " />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>
