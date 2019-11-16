<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Exercises.aspx.vb" Inherits="TryCW.Exercises" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Excersises</title>
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
    </form>
    <p>
        Here you may find exercises for you to practice for your exam. After you finish a task your progress will be recorder and you will be able to access it in the progress section on the menu.</p>
</body>
</html>
