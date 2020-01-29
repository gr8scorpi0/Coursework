<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Histologytest.aspx.vb" Inherits="TryCW.HomePageLogged_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 664px;
        }
        .auto-style5 {
            width: 466px;
        }
        .auto-style6 {
            width: 664px;
            height: 81px;
        }
        .auto-style7 {
            width: 466px;
            height: 81px;
        }
        .auto-style8 {
            height: 81px;
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
                   <asp:MenuItem Text="HomePage" Value="HomePage" NavigateUrl="~/HomePageLogged-in.aspx"></asp:MenuItem>
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
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Select the right option"></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Remember that each quiz is timed"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="The result is recorded and stored under "></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">progress.</asp:HyperLink>
                </td>
                <td class="auto-style5">
                    <asp:Image ID="Image1" runat="server" Height="248px" Width="402px" ImageUrl="http://www.lab.anhb.uwa.edu.au/mb140/addons/quiz/Q021.jpg" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Haversian canal" Width="225px" />
                    <asp:Button ID="Button2" runat="server" Text="interterritorial matrix" Width="225px" />
                    <asp:Button ID="Button3" runat="server" Text="intramembranous ossification" Width="225px" />
                </td>
            </tr>
            </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Select the right answer:</td>
                <td class="auto-style5">
                    <asp:Image ID="Image2" runat="server" Height="248px" Width="402px" ImageUrl="http://www.lab.anhb.uwa.edu.au/mb140/addons/quiz/Q234.jpg" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="zone of cartilage proliferation" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button5" runat="server" Text="transitional layer, articular cartilage" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button6" runat="server" Text="perichondrium" Width="225px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Select the right answer:</td>
                <td class="auto-style5">
                    <asp:Image ID="Image3" runat="server" Height="248px" Width="402px" ImageUrl="http://www.lab.anhb.uwa.edu.au/mb140/addons/quiz/Q290.jpg" />
                </td>
                <td>
                    <asp:Button ID="Button7" runat="server" Text="neutrophil" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button8" runat="server" Text="megakaryoblast" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button9" runat="server" Text="monocyte" Width="225px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Select the right answer:</td>
                <td class="auto-style5">
                    <asp:Image ID="Image4" runat="server" Height="248px" Width="402px" ImageUrl="http://www.lab.anhb.uwa.edu.au/mb140/addons/quiz/Q137.jpg" />
                </td>
                <td>
                    <asp:Button ID="Button45" runat="server" Text="cardiac muscle" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button44" runat="server" Text="skeletal muscle" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button12" runat="server" Text="smooth muscle and cardiac muscle	" Width="225px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Identify a histological feature"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Image ID="Image5" runat="server" Height="248px" Width="402px" ImageUrl="http://www.lab.anhb.uwa.edu.au/mb140/addons/quiz/Q161.jpg" />
                </td>
                <td>
                    <asp:Button ID="Button46" runat="server" Text="node of Ranvier" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button47" runat="server" Text="rough endoplasmatic reticulum" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button48" runat="server" Text="trunk of primary dendrite" Width="225px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Select the right answer:</td>
                <td class="auto-style5">
                    <asp:Image ID="Image6" runat="server" Height="248px" Width="402px" />
                </td>
                <td>
                    <asp:Button ID="Button49" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button50" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button51" runat="server" Text="Button" Width="225px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Select the right answer:</td>
                <td class="auto-style5">
                    <asp:Image ID="Image7" runat="server" Height="248px" Width="402px" />
                </td>
                <td>
                    <asp:Button ID="Button52" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button53" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button54" runat="server" Text="Button" Width="225px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Image ID="Image8" runat="server" Height="248px" Width="402px" />
                </td>
                <td>
                    <asp:Button ID="Button55" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button56" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button57" runat="server" Text="Button" Width="225px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Image ID="Image9" runat="server" Height="248px" Width="402px" />
                </td>
                <td>
                    <asp:Button ID="Button58" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button59" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button60" runat="server" Text="Button" Width="225px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Image ID="Image10" runat="server" Height="248px" Width="402px" />
                </td>
                <td>
                    <asp:Button ID="Button61" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button62" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button63" runat="server" Text="Button" Width="225px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Image ID="Image11" runat="server" Height="248px" Width="402px" />
                </td>
                <td>
                    <asp:Button ID="Button64" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button65" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button66" runat="server" Text="Button" Width="225px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Image ID="Image12" runat="server" Height="248px" Width="402px" />
                </td>
                <td>
                    <asp:Button ID="Button67" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button68" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button69" runat="server" Text="Button" Width="225px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Image ID="Image13" runat="server" Height="248px" Width="402px" />
                </td>
                <td>
                    <asp:Button ID="Button70" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button71" runat="server" Text="Button" Width="225px" />
                    <br />
                    <br />
                    <asp:Button ID="Button72" runat="server" Text="Button" Width="225px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">
                </td>
                <td class="auto-style8">
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Identify the CORRECT statement"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Button ID="Button40" runat="server" Text="Epithelia are avascular." Width="664px" />
                    <br />
                    <br />
                    <asp:Button ID="Button41" runat="server" Text="The type of an epithelium can vary with the angle of the section relative to the surface of the epithelium." Width="664px" />
                    <br />
                    <br />
                    <asp:Button ID="Button42" runat="server" Text="Epithelia are classified by the shape of the cells in the basal cell layer." Width="664px" />
                    <br />
                    <br />
                    <asp:Button ID="Button43" runat="server" Text="The basement membrane consists of two sublayers: the basal cell layer and the basal lamina." Width="664px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
