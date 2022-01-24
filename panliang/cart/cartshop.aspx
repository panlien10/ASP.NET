<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cartshop.aspx.cs" Inherits="panliang.cartshop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 138px;
        }
        .auto-style2 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div style="text-align:center">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    的购物车</div>
        

        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:Image ID="Image1" runat="server" Height="277px" ImageUrl="~/images/apple.JPG" Width="312px" />
                </td>
                <td class="auto-style1">
                    <asp:CheckBox ID="CheckBox2" runat="server" />
                    <asp:Image ID="Image2" runat="server" Height="289px" ImageUrl="~/images/putao.JPG" Width="316px" />
                </td>
                <td class="auto-style1">
                    <asp:CheckBox ID="CheckBox3" runat="server" />
                    <asp:Image ID="Image3" runat="server" Height="305px" ImageUrl="~/images/yintao.JPG" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="CheckBox4" runat="server" />
                    <asp:Image ID="Image4" runat="server" Height="317px" ImageUrl="~/images/caomei.JPG" Width="321px" />
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox5" runat="server" />
                    <asp:Image ID="Image5" runat="server" Height="357px" ImageUrl="~/cart/香蕉.jpg" Width="305px" />
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox6" runat="server" />
                    <asp:Image ID="Image6" runat="server" Height="339px" ImageUrl="~/cart/li.jpg" Width="318px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/cart/payup.aspx">去结账</asp:HyperLink>
&nbsp;</td>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/cart/fruit.aspx">去买水果</asp:HyperLink>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" />
                </td>
            </tr>
        </table>
        

    </form>
</body>
</html>
