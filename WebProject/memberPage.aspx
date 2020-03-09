<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="memberPage.aspx.cs" Inherits="WebProject.memberPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            background-color: #FFFFFF;
        }
        .auto-style4 {
            width: 506px;
        }
        .auto-style5 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style3">
        <tr>
            <td colspan="2" rowspan="2"><strong><span class="auto-style5">
                <br />
                <br />
                <br />
                אצלנו בגלידריית סמי שמעון חברי מועדון יכולים לקנות אונליין רק בלחיצת עכבר קטנה</span><br class="auto-style5" />
                <span class="auto-style5">שירות עד בית הלקוח ועוד מגוון הנחות ומבצעים חמים<br />
                <br />
                </span></strong></td>
            <td>אם את/ה חבר מועדון
                <asp:LinkButton ID="existentuserButt" runat="server" PostBackUrl="~/logInPage.aspx">לחץ כאן</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>אם את/ה מעוניין להצטרף לחברי המועדון
                <asp:LinkButton ID="newMemButt" runat="server" PostBackUrl="~/newUser.aspx">לחץ כאן</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4"><strong><span class="auto-style5">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:Timer ID="Timer1" Interval="2000"  runat="server">
                </asp:Timer>
                </span></strong>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                     <triggers>
                <asp:AsyncPostBackTrigger ControlID="timer1" EventName="Tick" />
            </triggers>
                    <ContentTemplate>
                        <asp:AdRotator ID="memberPicAdRotator" runat="server" DataSourceID="MemberImgSqlDataS" Height="300px" Width="300px" ImageUrlField="url"/>
                        <asp:SqlDataSource ID="MemberImgSqlDataS" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [url] FROM [memberImgDelivery]"></asp:SqlDataSource>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
