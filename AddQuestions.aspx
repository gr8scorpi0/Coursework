<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddQuestions.aspx.vb" Inherits="TryCW.CreateQuiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 280px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 716px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-size: large;
            font-family: "Times New Roman", Times, serif;
        }
        .auto-style6 {
            width: 100%;
            height: 206px;
        }
        .auto-style7 {
            color: #FFFFFF;
        }
        .auto-style8 {
            font-size: large;
            font-family: "Times New Roman", Times, serif;
            color: #FFFFFF;
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
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#663300" NavigateUrl="~/HomePage.aspx">Log Out</asp:HyperLink>
                 </asp:Panel>
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trytablesConnectionString %>" SelectCommand="SELECT * FROM [AddQuestions]"></asp:SqlDataSource>
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style4" colspan="2"><span class="auto-style8">To Upload an image visit
                    </span>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://pt.imgbb.com/" CssClass="auto-style5" ForeColor="#CADBD9" Target="_search">this website</asp:HyperLink>
                    <span class="auto-style5">&nbsp;<span class="auto-style7">and follow the instructions below.</span><br />
                    <br />
                    <br />
                    </span></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl="https://i.ibb.co/hsnSPh2/Img-BB-Tutorial.png" Width="500px" BorderColor="Silver" BorderStyle="Dotted" BorderWidth="5px" />
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="   Click on &quot;Start Uploading&quot;  " BackColor="#CADBD9" BorderColor="Silver" BorderWidth="5px" Height="100px" Width="472px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image2" runat="server" Height="400px" ImageUrl="https://i.ibb.co/2F2Gyf8/Img-BB-Tutorial-3.png" Width="500px" BorderColor="Silver" BorderStyle="Dotted" BorderWidth="5px" />
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="After Uploading choose HTML Full Linked and paste it to the Image URL." BackColor="#CADBD9" BorderColor="Silver" BorderWidth="5px" Height="100px" Width="472px"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <table class="auto-style6">
            <tr>
                <td class="auto-style4">
                    <asp:Panel ID="Panel3" runat="server" BackColor="#CADBD9" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="15px" CssClass="auto-style1" Height="340px" HorizontalAlign="Center" Width="619px">
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Answer:"></asp:Label>
                        &nbsp;&nbsp;
                        <br />
                        <br />
                        &nbsp;<asp:TextBox ID="Answer_TextBox" runat="server" Width="432px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Image"></asp:Label>
                        &nbsp;URL:<br />
                        <br />
                        <asp:TextBox ID="Link_TextBox" runat="server" Width="434px" TextMode="MultiLine"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Submit_Button" runat="server" Text="Submit" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Cancel_Button" runat="server" Text="Cancel" />
                    </asp:Panel>
        <asp:Image ID="done_Image" runat="server" Height="50px" ImageUrl="https://pngimage.net/wp-content/uploads/2018/05/done-icon-png-8.png" Width="46px" />
        <asp:Image ID="error_Image" runat="server" Height="62px" ImageUrl="https://img.icons8.com/pastel-glyph/2x/error.png" Width="64px" />
                    <asp:Label ID="msg_Label" runat="server" ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
   
</body>
</html>
