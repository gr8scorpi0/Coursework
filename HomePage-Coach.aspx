<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HomePage-Coach.aspx.vb" Inherits="TryCW.CoachExerciseAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style2 {
            color: #FFFFFF;
            text-align: center;
            font-size: xx-large;
            text-decoration: underline;
        }
    </style>
</head>
<body style="background: #808080">
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
    </form>
    <p class="auto-style2">
        Welcome Coach,</p>
    <p class="auto-style1">
        Here you may upload new questions, edit existing ones or even add new coaches.</p>
</body>
</html>
