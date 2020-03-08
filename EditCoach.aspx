<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditCoach.aspx.vb" Inherits="TryCW.EditCoach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dulce</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#CADBD9">
             <asp:Menu ID="Menu1" runat="server" BackColor="#CADBD9" BorderColor="Black" DynamicHorizontalOffset="2" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="#666666" Height="106px" StaticSubMenuIndent="10px" Width="472px" Orientation="Horizontal" RenderingMode="Table">
                <DynamicHoverStyle BackColor="#666666" ForeColor="White" Font-Bold="True" Font-Names="Malgun Gothic" />
                <DynamicMenuItemStyle HorizontalPadding="10px" VerticalPadding="4px" BackColor="#666666" ForeColor="White" />
                <DynamicMenuStyle BackColor="#FFCC00" />
                <DynamicSelectedStyle BackColor="#666666" />
                <Items>
                   <asp:MenuItem Text="HomePage" Value="HomePage" NavigateUrl="~/HomePage-Coach.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Exercises" Value="Add Questions" Selectable="False">
                        <asp:MenuItem NavigateUrl="~/AddQuestions.aspx" Text="Add" Value="Add"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/EditExercises.aspx" Text="Edit" Value="Edit"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/EditCoach.aspx" Text="Edit Coach" Value="Edit Questions"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#1C5E55" />
            </asp:Menu>
                 <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#663300" NavigateUrl="~/HomePage.aspx">Log Out</asp:HyperLink>
                 </asp:Panel>
        </div>
        <asp:Panel ID="Panel2" runat="server" BackColor="Gray">
            <br />
            &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Username:"></asp:Label>
            <br />
            &nbsp;&nbsp;
            <asp:TextBox ID="username_TextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" ForeColor="White" Text="* Password:"></asp:Label>
            <br />
            &nbsp;&nbsp;
            <asp:TextBox ID="Password_TextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" ForeColor="White" Text="* Not needed if deleting an account."></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="add_Button" runat="server" Text="Add" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="delete_Button" runat="server" Text="Delete" />
            <br />
            &nbsp;&nbsp;
            <asp:Image ID="error_Image" runat="server" Height="59px" ImageUrl="https://img.icons8.com/pastel-glyph/2x/error.png" Width="56px" />
            &nbsp;&nbsp;
            <asp:Label ID="error_Label" runat="server" ForeColor="White" Text="Label"></asp:Label>
            <br />
            &nbsp;
            <asp:Image ID="done_Image" runat="server" Height="50px" ImageUrl="https://pngimage.net/wp-content/uploads/2018/05/done-icon-png-8.png" Width="46px" />
            &nbsp;
            <asp:Label ID="Done_Label" runat="server" ForeColor="White" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeConnectionString %>" SelectCommand="SELECT * FROM [CoachLogins]"></asp:SqlDataSource>
        </asp:Panel>
    </form>
</body>
</html>
