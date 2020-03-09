<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="contactPage.aspx.cs" Inherits="WebProject.contactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
        background-color: #FFFFFF;
    }
    .auto-style4 {
        width: 528px;
            font-size: x-large;
            text-decoration: underline;
            color: #0000FF;
        }
    .auto-style5 {
        font-size: x-large;
        color: #0000FF;
            width: 219px;
        }
    .auto-style8 {
            width: 440px;
        }
        .auto-style9 {
            width: 219px;
        }
        .auto-style10 {
            width: 232px;
        }
        .auto-style11 {
            width: 197px;
        }
        .auto-style16 {
            width: 440px;
            height: 53px;
           
        }
        .auto-style17 {
            width: 197px;
            height: 53px;
        }
        .auto-style19 {
            width: 232px;
            text-align: center;
        }
        .auto-style21 {
            width: 197px;
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3" border="1" style="border: thin groove #00FFFF; padding: inherit; margin: inherit; visibility: visible; overflow: scroll">
    <tr>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style4" colspan="2"><strong>למידע נוסף</strong></td>
        <td class="auto-style5"><strong>גלידריית סמי בע&quot;מ</strong></td>
    </tr>
    <tr>
        <td class="auto-style19" rowspan="3" style="direction:rtl">
            <asp:TextBox ID="inputText" runat="server" BackColor="#999966" BorderStyle="Groove" Height="176px" ></asp:TextBox>
        </td>
        <td class="auto-style16"  >
            <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="nameBox" Display="Dynamic" Font-Size="X-Large" ForeColor="Red" EnableClientScript="False">שדה חובה*</asp:RequiredFieldValidator>
            <asp:TextBox ID="nameBox" runat="server" ></asp:TextBox>
        </td>
        <td class="auto-style17">שם</td>
        <td class="auto-style9" rowspan="5">טל&#39;:08-88865134<br />
            פקס: 88865135<br />
            ז&#39;בוטינסקי 84, אשדוד</td>
    </tr>
    <tr>
        <td class="auto-style16">
            <asp:RequiredFieldValidator ID="emailvalidator" runat="server" ControlToValidate="emailBox" Display="Dynamic" Font-Size="X-Large" ForeColor="Red" EnableClientScript="False">שדה חובה*</asp:RequiredFieldValidator>
            <asp:TextBox ID="emailBox" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style21">דוא&quot;ל</td>
    </tr>
    <tr>
        <td class="auto-style16">
            <asp:RequiredFieldValidator ID="telvalidetor" runat="server" ControlToValidate="telBox" Display="Dynamic" Font-Size="X-Large" ForeColor="Red" EnableClientScript="False">שדה חובה*</asp:RequiredFieldValidator>
            <asp:TextBox ID="telBox" runat="server" OnTextChanged="telBox_TextChanged"></asp:TextBox>
        </td>
        <td class="auto-style11">טלפון</td>
    </tr>
    <tr>
        <td class="auto-style10">
            &nbsp;</td>
        <td class="auto-style8">
            <asp:DropDownList ID="typeOfContactDrop" runat="server" CssClass="auto-style2" Width="190px" OnSelectedIndexChanged="typeOfContactDrop_SelectedIndexChanged">
                <asp:ListItem>כללי</asp:ListItem>
                <asp:ListItem>דרושים</asp:ListItem>
                <asp:ListItem>זכיינים</asp:ListItem>
                <asp:ListItem>אחר</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style11">סוג הפנייה</td>
    </tr>
    <tr>
        <td class="auto-style10">
            <asp:Button ID="sendButt" runat="server" Text="שלח" Width="120px" OnClick="sendButt_Click" />
        </td>
        <td class="auto-style8">
            &nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
    </tr>
</table>
</asp:Content>
