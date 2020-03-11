<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AfterQuiz.aspx.vb" Inherits="TryCW.AfterQuiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 40px;
        }
        .auto-style3 {
            height: 40px;
            width: 319px;
        }
        .auto-style4 {
            width: 319px;
            height: 89px;
        }
        .auto-style5 {
            height: 89px;
        }
    </style>
</head>
<body>
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
            </asp:Panel>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"></td>
                    <td rowspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; You Scored:<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Score_Label" runat="server" BackColor="#CCCCCC" BorderColor="#009933" BorderStyle="Groove" Height="311px" Text="Label" Width="347px"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="Progress_Button" runat="server" BackColor="#FFCC00" BorderStyle="Dotted" ForeColor="White" Height="85px" PostBackUrl="~/Progress.aspx" Text="See Progress" Width="340px" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Quiz_Button" runat="server" BackColor="#336600" BorderColor="#FFCC00" BorderStyle="Dotted" ForeColor="White" Height="87px" PostBackUrl="~/Exercises.aspx" Text="New Quiz" Width="309px" />
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
