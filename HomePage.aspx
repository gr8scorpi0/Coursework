<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HomePage.aspx.vb" Inherits="TryCW.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HomePage</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 306px;
        }
        .auto-style3 {
            color: #FFFFFF;
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
                        <asp:MenuItem Text="HomePage" Value="HomePage" NavigateUrl="~/HomePage.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Practice" Value="Practice" NavigateUrl="~/HomePage.aspx">
                            <asp:MenuItem Text="Exercises" Value="Exercises" NavigateUrl="~/HomePage.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Progress" Value="Progress" NavigateUrl="~/HomePage.aspx"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#1C5E55" />
                </asp:Menu>
            </asp:Panel>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <br />
                    <br />
                </td>
                <td>
            <asp:Label ID="Label1" runat="server" Text="Username:      "></asp:Label>
            <asp:TextBox ID="UsernameTextBox" runat="server" Width="235px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    <br />
                </td>
                <td>
            <asp:Label ID="Label2" runat="server" Text="Password:   "></asp:Label>
            &nbsp;<asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" style="text-align: left" Width="235px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="LoginButton" runat="server" Text="Login" Width="151px" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeConnectionString %>" SelectCommand="SELECT * FROM [UserLogins]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
        <asp:Image ID="error_Image" runat="server" Height="62px" ImageUrl="https://img.icons8.com/pastel-glyph/2x/error.png" Width="64px" />
        &nbsp;<asp:Label ID="Error_Label" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF9900" NavigateUrl="~/SignUp.aspx" BorderColor="White" BorderStyle="Solid" CssClass="auto-style3">Don&#39;t have an account? Sign Up Here</asp:HyperLink>
        </p>
        <p style="text-align: left">
            &nbsp;</p>
        <br />
    </form>
</body>
</html>
