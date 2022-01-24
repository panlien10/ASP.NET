<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xianqinye.aspx.cs" Inherits="panliang.xianqinye" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <link href="css/main1.css"rel="stylesheet"type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="wrapper">
            <br/>
            <div class="header" >
               
                <h1 >水果商店</h1></div>
            
        </div>
                <div style="text-align:center">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>的详情
                </div>
            <br />

        </div>
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" />
            </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/userindex.aspx">去购买</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
