<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Exercises.aspx.vb" Inherits="TryCW.Exercises" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Excersises</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 363px;
        }
        .auto-style3 {
            width: 363px;
            height: 407px;
        }
        .auto-style4 {
            height: 407px;
        }
        .auto-style5 {
            width: 771px;
        }
        .auto-style6 {
            width: 771px;
            text-align: left;
        }
        .auto-style7 {
            width: 363px;
            height: 30px;
        }
        .auto-style8 {
            width: 771px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
    </style>
</head>
<body>
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
                    <asp:MenuItem Text="Practice" Value="Practice" NavigateUrl="~/Practice.aspx">
                        <asp:MenuItem Text="Exercises" Value="Exercises" NavigateUrl="~/Exercises.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Progress" Value="Progress"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#1C5E55" />
            </asp:Menu>
                 </asp:Panel>
        </div>
    <p>
        Here you may find exercises for you to practice for your exam. After you finish a task your progress will be recorded and you will be able to access it in the progress section on the menu.<table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">State the name of the problem in the cell.</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6" rowspan="2">
                    <asp:Image ID="Image1" runat="server" Height="360px" Width="421px" ImageUrl="https://bcf.technion.ac.il/wp-content/uploads/2018/05/Histology.jpg" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Histology" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Text="Show Answer" />
                </td>
                <td class="auto-style9"></td>
            </tr>
        </table>
         </p>
    </form>
    </body>
</html>
