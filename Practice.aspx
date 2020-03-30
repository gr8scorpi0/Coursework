<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Practice.aspx.vb" Inherits="TryCW.Practice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 110px;
        }
        .auto-style2 {
            width: 487px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body style="background: #c9dcea">
    <form id="form1" runat="server">
        
            <div>
             <asp:Panel ID="Panel1" runat="server" BackColor="#FFCC00">
             <asp:Menu ID="Menu1" runat="server" BackColor="#FFCC00" BorderColor="Black" DynamicHorizontalOffset="2" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="#666666" Height="106px" StaticSubMenuIndent="10px" Width="472px" Orientation="Horizontal" RenderingMode="Table">
                <DynamicHoverStyle BackColor="#666666" ForeColor="White" Font-Bold="True" Font-Names="Malgun Gothic" />
                <DynamicMenuItemStyle HorizontalPadding="10px" VerticalPadding="4px" BackColor="#666666" ForeColor="White" />
                <DynamicMenuStyle BackColor="#FFCC00" />
                <DynamicSelectedStyle BackColor="#666666" />
                <Items>
                   <asp:MenuItem Text="HomePage" Value="HomePage" NavigateUrl="~/HomePageLogged-in.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Practice" Value="Practice" NavigateUrl="~/Practice.aspx">
                        <asp:MenuItem Text="Exercises" Value="Exercises" NavigateUrl="~/Exercises.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Progress" Value="Progress" NavigateUrl="~/Progress.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#1C5E55" />
            </asp:Menu>
                 <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#663300" NavigateUrl="~/HomePage.aspx">Log Out</asp:HyperLink>
                 </asp:Panel>
        </div>
        
            <p class="auto-style4">
                Select an option:</p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                <asp:Button ID="Button1" runat="server" Text="Exercises" BackColor="#FFCC00" BorderColor="#999999" BorderStyle="Double" BorderWidth="10px" CssClass="auto-style3" Font-Bold="False" Font-Names="Malgun Gothic" ForeColor="#666666" PostBackUrl="~/Exercises.aspx" Width="298px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                <asp:Button ID="Button2" runat="server" Text="Progress" BackColor="#FFCC00" BorderColor="#999999" BorderStyle="Double" BorderWidth="10px" CssClass="auto-style3" Font-Bold="False" Font-Names="Malgun Gothic" ForeColor="#666666" PostBackUrl="~/Progress.aspx" Width="298px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        
    </form>
</body>
</html>
