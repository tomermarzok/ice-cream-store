<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="newUser.aspx.cs" Inherits="WebProject.newUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 452px;
            height: 323px;
            background-color: #FFFFFF;
            margin:auto;
        }
        .auto-style4 {
            text-decoration: underline;
            font-size: x-large;
            color: #0000FF;
        }
        .auto-style5 {
        width: 347px;
        margin: auto;
        position: center;
    }
    .auto-style6 {
        width: 347px;
        margin: auto;
    }
    .auto-style7 {
        width: 347px;
        margin: auto;
        height: 30px;
    }
    .auto-style8 {
        height: 30px;
    }
    .auto-style9 {
        width: 347px;
        margin: auto;
        height: 70px;
    }
    .auto-style10 {
        height: 70px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style4" colspan="2"><strong>דף הרשמה לחבר מועדון חדש</strong></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="userValidator" runat="server" ControlToValidate="usernameBox" Display="Dynamic" ErrorMessage="חובה להזין שם משתמש" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="usernameBox" runat="server"></asp:TextBox>
            </td>
            <td>שם משתמש</td>
        </tr>
        <tr>
            <td class="auto-style5" dir="rtl">
                <asp:DropDownList ID="genderlist" runat="server">
                    <asp:ListItem Value="זכר" Selected="True">זכר</asp:ListItem>
                    <asp:ListItem>נקבה</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>מין</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="passenterValidator1" runat="server" ControlToValidate="passBox" Display="Dynamic" ErrorMessage="חובה להזין סיסמא" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="passCompareValidator" runat="server" ControlToCompare="pass2Box" ControlToValidate="passBox" Display="Dynamic" ForeColor="Red">*</asp:CompareValidator>
                <asp:TextBox ID="passBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style8">סיסמא</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="pass2Validator1" runat="server" ControlToValidate="pass2Box" Display="Dynamic" ErrorMessage="סיסמא לא תואמת" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="pass2Box" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>אימות סיסמא</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="emailValidator3" runat="server" ControlToValidate="emailBox" Display="Dynamic" ErrorMessage="חובה להזין אימייל" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="emailBox" runat="server"></asp:TextBox>
            </td>
            <td>אימייל</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="phoneValidator4" runat="server" ControlToValidate="phoneBox" Display="Dynamic" ErrorMessage="חובה להזין טלפון" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="phoneBox" runat="server"></asp:TextBox>
            </td>
            <td>טלפון</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="addresValidator" runat="server" ControlToValidate="addresBox" Display="Dynamic" ErrorMessage="חובה להזין כתובת" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="addresBox" runat="server"></asp:TextBox>
            </td>
            <td>כתובת</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:FileUpload ID="uploadImage" runat="server" />
            </td>
            <td>הוספת תמונה</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:ValidationSummary ID="logInValidationSummary" runat="server" ForeColor="Red" HeaderText="השגיאות" />
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="sendButt" runat="server" OnClick="sendButt_Click" Text="שלח" Width="124px" />
                <asp:Button ID="resetButt" runat="server" CausesValidation="False" OnClick="resetButt_Click" Text="מחק" Width="124px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
