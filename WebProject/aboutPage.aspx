<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="aboutPage.aspx.cs" Inherits="WebProject.aboutPage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
       position: center;
        width: 100%;
        border: 1px solid #FFFFFF;
        background-color: #FFFFFF;
    }
    .auto-style3 {
        width: 358px;
    }
        .auto-style4 {
            text-align: right;
            color: #0000FF;
            width: 454px;
            text-align:center;

        }
        .auto-style6 {
            width: 1123px;
            height: 800px;
            margin-left: 0px;
            margin:auto;

        }
        .auto-style7 {
            color: #000000;

        }
        .auto-style8 {
            text-decoration: underline;
            font-size: xx-large;
        }
        #table1
        {
            align-items: center;
            height:auto;
            position: center;
            margin:auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
                <div class="auto-style6" dir="rtl" aria-disabled="False">

    <table class="auto-style2"; style="position:center"; id="table1">
    <tr>
        <td class="auto-style3">
         
         
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Timer ID="Timer1" Interval="2000" runat="server">
            </asp:Timer>
            
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <triggers>
                <asp:AsyncPostBackTrigger ControlID="timer1" EventName="Tick" />
            </triggers>
                <ContentTemplate>
                    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="SqlDataSource1" Height="300px" Width="300px" ImageUrlField="url" />
                                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [url] FROM [aboutImage]"></asp:SqlDataSource>

                     </ContentTemplate>

            </asp:UpdatePanel>
        </td>
        <td class="auto-style4">
            <strong>
            <asp:Label ID="aboutTitle" runat="server" Text="גלידריית סמי" CssClass="auto-style8"></asp:Label>
            </strong>
            <br />
            <span class="auto-style7" id="table">אצלנו בגלידריה תמצאו פארק של טעמים, קיים אצלנו מבחר ענק של<br />
            גלידות שמנת, סורבה, גלידות פרווה וללא סוכר<br />
            בנוסף לכך אנחנו מתמחים בהכנת גלידות יוגורט במגוון טעמים<br />
            כמו כן ברשת מוגשים קינוחים חמים, וופל בלגי קרפ צרפתי, המוכים
            <br />
            במקום מול עיני הלקוח עם מגוון עשיר ורחב של תוספות<br />
            מאות אלפי לקוחותינו לא טועים והם ממשיכים להנות ממגוון מוצרנו<br />
            הגלידה שלנו עשוייה מחלב מלא וטרי, מחורי גלם איכותיים ופירות<br />
            ישראליים , הגלידות אצלנו בלי שום חומרים מייצבים או צבעי מאכל</span></td>
    </tr>
</table>
</div>

</asp:Content>





