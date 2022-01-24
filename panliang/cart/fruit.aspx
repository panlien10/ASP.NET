<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fruit.aspx.cs" Inherits="panliang.cart.fruit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align:center">水果超市</div>
        </div>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:Image ID="Image1" runat="server" Height="372px" ImageUrl="~/cart/juzhi.JPG" Width="384px" />
                </td>
                <td class="auto-style1">
                    <asp:CheckBox ID="CheckBox2" runat="server" />
                    <asp:Image ID="Image2" runat="server" Height="360px" ImageUrl="~/cart/LIZHI.JPG" Width="352px" />
                </td>
                <td class="auto-style1">
                    <asp:CheckBox ID="CheckBox3" runat="server" />
                    <asp:Image ID="Image3" runat="server" Height="381px" ImageUrl="~/cart/.JPG" Width="353px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/cart/cartshop.aspx">加入购物车</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/cart/payup.aspx">立即购买</asp:HyperLink>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="确认" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
