﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditExercises.aspx.vb" Inherits="TryCW.EditExercises" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                    <asp:MenuItem Text="Add" Value="Add Questions" NavigateUrl="~/CreateQuiz.aspx">
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/EditExercises.aspx" Text="Edit" Value="Edit Questions"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#1C5E55" />
            </asp:Menu>
                 <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#663300" NavigateUrl="~/HomePage.aspx">Log Out</asp:HyperLink>
                 </asp:Panel>
        </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
                <asp:BoundField DataField="ImageLink" HeaderText="ImageLink" SortExpression="ImageLink" />
                <asp:BoundField DataField="QuestionID" HeaderText="QuestionID" InsertVisible="False" ReadOnly="True" SortExpression="QuestionID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeConnectionString %>" SelectCommand="SELECT * FROM [AddQuestions]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Complete according to what you wish to change. QuestionID MUST be included."></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="QuestionID:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="QID_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="ImageURL:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ImageURL_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Answer"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Answer_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="41px" ImageUrl="https://i.ya-webdesign.com/images/photo-gallery-icon-png-7.png" Width="28px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="https://cdn.onlinewebfonts.com/svg/img_356715.png" Width="29px" />
&nbsp;&nbsp;
        <br />
        <asp:Button ID="ImageURL_Button" runat="server" Text="Image URL" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Answer_Button" runat="server" Text="Answer" />
    </form>
</body>
</html>
