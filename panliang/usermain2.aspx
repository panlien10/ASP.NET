<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usermain2.aspx.cs" Inherits="panliang.usermain2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/main1.css"rel="stylesheet"type="text/css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 592px;
        }
        .auto-style2 {
            height: 73px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <br/>
            <div class="header">
               
                <h1 >水果商店</h1></div>
             欢迎！ <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
       <table class="auto-style1">
            <tr>
                <td>
                   
        <asp:LinkButton ID="买水果" runat="server" PostBackUrl="~/userindex.aspx">去买水果</asp:LinkButton>
                   
                </td>
                <td>
                   
                </td>
                <td colspan="2"><h4>你喜欢吃橘子吗？</h4></td>
                <td colspan="2" rowspan="8">
                    <asp:Image ID="Image4" runat="server" Height="458px" ImageUrl="~/image/backround.png" Width="704px" />
                </td>
            </tr>
            <tr>
                <td>
                   
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/cartshow.aspx">查看我的购物车</asp:LinkButton>
                   
                </td>
                <td>
                   
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="不喜欢" />
                   
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/红.png"  Height="30" Width="<%#4*vote1%>"/>
                    <asp:Label ID="Label2" runat="server" Text="<%#GetPercent(vote1) %>"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/order1.aspx">查看历史订单</asp:LinkButton>
                </td>
                <td><asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="一般般" />
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/黄.png"  Height="30" Width="<%#4*vote2%>"/>
                    <asp:Label ID="Label3" runat="server" Text="<%#GetPercent(vote2) %>"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td><asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="很喜欢" />
                </td>
                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/蓝.png"  Height="30" Width="<%#4*vote3%>"/>
                    <asp:Label ID="Label4" runat="server" Text="<%#GetPercent(vote3) %>"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
&nbsp;</form>
</body>
</html>
