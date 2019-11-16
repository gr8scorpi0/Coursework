<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HomePage.aspx.vb" Inherits="TryCW.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HomePage</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:Menu ID="Menu1" runat="server" BackColor="#FFCC00" BorderColor="Black" DynamicHorizontalOffset="2" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="#666666" Height="106px" StaticSubMenuIndent="10px" Width="472px" Orientation="Horizontal" RenderingMode="Table">
                <DynamicHoverStyle BackColor="#666666" ForeColor="White" Font-Bold="True" Font-Names="Malgun Gothic" />
                <DynamicMenuItemStyle HorizontalPadding="10px" VerticalPadding="4px" BackColor="#666666" ForeColor="White" />
                <DynamicMenuStyle BackColor="#FFCC00" />
                <DynamicSelectedStyle BackColor="#666666" />
                <Items>
                   <asp:MenuItem Text="HomePage" Value="HomePage" NavigateUrl="~/HomePage.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Practice" Value="Practice" NavigateUrl="~/Exercises.aspx">
                        <asp:MenuItem Text="Exercises" Value="Exercises"></asp:MenuItem>
                        <asp:MenuItem Text="Progress" Value="Progress"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#1C5E55" />
            </asp:Menu>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Username:      "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p style="text-align: left">
            <asp:Label ID="Label2" runat="server" Text="Password:   "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" style="text-align: left">
</asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Login" />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
