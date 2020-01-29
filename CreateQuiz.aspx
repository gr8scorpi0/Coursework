<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CreateQuiz.aspx.vb" Inherits="TryCW.CreateQuiz" %>

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
            width: 950px;
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
    </style>
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
                   <asp:MenuItem Text="HomePage" Value="HomePage" NavigateUrl="~/HomePage.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Practice" Value="Practice" NavigateUrl="~/Practice.aspx">
                        <asp:MenuItem Text="Exercises" Value="Exercises" NavigateUrl="~/CoachExerciseAdd.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#1C5E55" />
            </asp:Menu>
                 </asp:Panel>
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:trytablesConnectionString %>" SelectCommand="SELECT * FROM [AddQuestions]"></asp:SqlDataSource>
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style4" colspan="2"><span class="auto-style5">To Upload an image visit
                    </span>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://pt.imgbb.com/" CssClass="auto-style5">this website</asp:HyperLink>
                    <span class="auto-style5">&nbsp;and follow the instructions below.<br />
                    <br />
                    <br />
                    </span></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="384px" ImageUrl="https://i.ibb.co/hsnSPh2/Img-BB-Tutorial.png" Width="654px" BorderColor="Silver" BorderStyle="Dotted" BorderWidth="5px" />
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="   Click on &quot;Start Uploading&quot;  " BackColor="#CADBD9" BorderColor="Silver" BorderWidth="5px" Height="172px" Width="442px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image2" runat="server" Height="409px" ImageUrl="https://i.ibb.co/2F2Gyf8/Img-BB-Tutorial-3.png" Width="661px" BorderColor="Silver" BorderStyle="Dotted" BorderWidth="5px" />
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="After Uploading choose HTML Full Linked and paste it to the Image URL." BackColor="#CADBD9" BorderColor="Silver" BorderWidth="5px" Height="203px" Width="446px"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style6">
            <tr>
                <td>
                    <asp:Panel ID="Panel3" runat="server" BackColor="#CADBD9" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="15px" CssClass="auto-style1" Height="440px" HorizontalAlign="Center" Width="619px">
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
                </td>
            </tr>
        </table>
    </form>
   
</body>
</html>
