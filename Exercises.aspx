<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Exercises.aspx.vb" Inherits="TryCW.Exercises" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Excercises</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 343px;
        } 
        .auto-style3 {
            width: 343px;
            height: 407px;
        }
        .auto-style5 {
            width: 290px;
            height: 145px;
        }
        .auto-style6 {
            width: 290px;
            text-align: left;
        }
        .auto-style8 {
            width: 290px;
            height: 30px;
        }
        .auto-style12 {
            width: 343px;
            height: 145px;
        }
        .auto-style13 {
            width: 343px;
            height: 30px;
        }
        .auto-style14 {
            background-color: #FFFF00;
        }
        .auto-style15 {
            width: 606px;
            height: 145px;
        }
        .auto-style16 {
            width: 606px;
        }
        .auto-style17 {
            width: 606px;
            height: 407px;
        }
        .auto-style18 {
            width: 606px;
            height: 30px;
        }
        </style>
</head>
<body style="background: #c9dcea">
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
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
                 <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#663300" NavigateUrl="~/HomePage.aspx">Log Out</asp:HyperLink>
                 </asp:Panel>
        </div>
    <p>
         
        &nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label2" runat="server" Text="Your Current Score is:"></asp:Label>
                    <br />
                    <asp:Label ID="Score_Label" runat="server" Text="Label" Visible="False" CssClass="auto-style14"></asp:Label>
                </td>
                <td class="auto-style5">State the name of the problem in the cell.</td>
                <td class="auto-style15">
                    <asp:Label ID="TimetxtLabel" runat="server" Text="Time Left:"></asp:Label>
                 

               
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Timer ID="Timer1" runat="server" Interval="1000">
                            </asp:Timer>
                            <asp:Label ID="TimeLabel" runat="server" Text="15" CssClass="auto-style14"></asp:Label>
                            &nbsp;
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6" rowspan="2">
                    <br />
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" Text="Button" Width="300px" />
                            <br />
                            <br />
                            <asp:Button ID="Button2" runat="server" BackColor="#FFCC00" Text="Button" Width="300px" />
                            <br />
                            <br />
                            <asp:Button ID="Button3" runat="server" BackColor="#FFCC00" Text="Button" Width="300px" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="317px" Width="441px" />
                </td>
                <td class="auto-style17">
                    <br />
                </td>
            </tr>
            <tr>
                
                <td class="auto-style13">
                    <asp:SqlDataSource ID="QuestionsTable" runat="server" ConnectionString="<%$ ConnectionStrings:trytablesConnectionString %>" SelectCommand="SELECT * FROM [AddQuestions]"></asp:SqlDataSource>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style18">
                    <asp:Button ID="NextQuestion_Button" runat="server" Text="Next Question" BackColor="#99CC00" ForeColor="White" Height="48px" Width="150px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style18">
                    <asp:Button ID="Exit_Button" runat="server" BackColor="#CC0000" ForeColor="White" Height="48px" Text="Exit" Width="150px" />
                </td>
            </tr>
        </table>
         </p>
    </form>

    </body>
</html>
