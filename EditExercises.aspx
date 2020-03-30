<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditExercises.aspx.vb" Inherits="TryCW.EditExercises" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <br />
        <asp:TextBox ID="search_TextBox" runat="server"></asp:TextBox>
        &nbsp;
        <asp:Button ID="search_Button" runat="server" Text="Search" />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
                <asp:BoundField DataField="ImageLink" HeaderText="ImageLink" SortExpression="ImageLink" />
                <asp:BoundField DataField="QuestionID" HeaderText="QuestionID" InsertVisible="False" ReadOnly="True" SortExpression="QuestionID" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SomeeConnectionString %>" SelectCommand="SELECT * FROM [AddQuestions]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Complete according to what you wish to change. QuestionID MUST be included." ForeColor="White"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="QuestionID:" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="QID_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="ImageURL:" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ImageURL_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Answer:" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Answer_TextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Image ID="error_Image" runat="server" Height="62px" ImageUrl="https://img.icons8.com/pastel-glyph/2x/error.png" Width="64px" />
        <asp:Label ID="Error_Label" runat="server" Text="Label" ForeColor="White"></asp:Label>
        <br />
        <asp:Image ID="done_Image" runat="server" Height="50px" ImageUrl="https://pngimage.net/wp-content/uploads/2018/05/done-icon-png-8.png" Width="46px" />
        <asp:Label ID="done_Label" runat="server" Text="Label" ForeColor="White"></asp:Label>
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
