<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="logInPage.aspx.cs" Inherits="WebProject.logInPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 427px;
            border-collapse: collapse;
            height: 153px;
            background-color: #FFFFFF;
            margin:auto;

        }
        .auto-style4 {
            width: 340px;
            margin:0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3" aria-hidden="False" >
    <tr>
        <td colspan="2">אנא הזן פרטים</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="userNameValidator" runat="server" ControlToValidate="userNameBox" Display="Dynamic" ErrorMessage="שם משתמש חובה" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="userNameBox" runat="server"></asp:TextBox>
        </td>
        <td>שם משתמש</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="passValidator" runat="server" ControlToValidate="passBox" Display="Dynamic" ErrorMessage="סיסמא חובה" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="passBox" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td aria-hidden="True">סיסמא</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:CheckBox ID="coustomerBox" runat="server" AutoPostBack="True" Text="לקוח" TextAlign="Left" Checked="True" />
            <asp:CheckBox ID="mangerBox" runat="server" AutoPostBack="True" Text="מנהל" />
        </td>
        <td aria-hidden="True">סוג התחברות</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="perValidator" runat="server" ControlToValidate="perCodeTB" Display="None" ErrorMessage="הרשאה לא תקינה" ForeColor="Red" Visible="False">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="perCodeTB" runat="server" Visible="False"></asp:TextBox>
        </td>
        <td aria-hidden="True">
            <asp:Label ID="lbmanger" runat="server" Text="הרשאה" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:ValidationSummary ID="loginSummary" runat="server" ForeColor="Red" HeaderText="אופס" />
            <asp:Label ID="checkTestLa" runat="server" ForeColor="Red"></asp:Label>
            <asp:SqlDataSource ID="loginCheck" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [userName], [password] FROM [userDet] WHERE (([userName] LIKE '%' + @userName + '%') AND ([password] LIKE '%' + @password + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="userNameBox" Name="userName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="passBox" Name="password" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SDid" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userDet] WHERE (([userName] LIKE '%' + @userName + '%') AND ([password] LIKE '%' + @password + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="userNameBox" Name="userName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="passBox" Name="password" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="mangerCheck" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [userName], [password], [permission] FROM [userDet] WHERE (([permission] = @permission) AND ([userName] LIKE '%' + @userName + '%'))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="perCodeTB" Name="permission" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="userNameBox" Name="userName" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="loginBut" runat="server" Text="התחבר" Width="124px" OnClick="loginBut_Click" />
            <br />
        </td>
    </tr>
</table>
</asp:Content>
