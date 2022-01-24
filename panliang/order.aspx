<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="panliang.order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/main1.css"rel="stylesheet"type="text/css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 500px;
        }
        .auto-style2 {
            width: 100%;
            height: 721px;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <div class="wrapper">
                
           
            <div class="header">
               
                <h1 >水果商店</h1>
            <div><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></div>
                </div>
        </div>
        
        <div>
            <div class="auto-style1">

                <table class="auto-style2">
                    <tr>
                        <td colspan="2" rowspan="12">
                            <asp:Image ID="Image2" runat="server" Height="647px" ImageUrl="~/image/叶子.JPG" Width="338px" />
                        </td>
                        <td colspan="2">&nbsp;</td>
                        <td colspan="4">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">商品名</td>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            </td>
                        <td class="auto-style3" style="color:red">
                            收件人姓名</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="请输入收货人姓名！"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style3">
                            </td>
                        <td rowspan="5">
                            <asp:Image ID="Image1" runat="server" Height="200px" Width="250px" />
                        </td>
                    </tr>
                    <tr>
                        <td>总价格</td>
                        <td>
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            </td>
                        <td style="color:red">
                            默认手机号</td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            <br />
                        </td>
                        <td rowspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td rowspan="2">单价</td>
                        <td rowspan="2">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td rowspan="2">
                            &nbsp;</td>
                        <td >
                            收货人手机号</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="使用默认手机号" />
                        </td>
                    </tr>
                    <tr>
                        <td style="color:red">
                            默认收件地址</td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>购买数量</td>
                        <td >
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            收货地址</td>
                        <td style="color:red">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="使用默认地址" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="立即购买" ForeColor="#FF3300" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" ForeColor="#0066FF" PostBackUrl="~/userindex.aspx" Text="取消购买" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td rowspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
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
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td rowspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                        <td colspan="4">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                        <td colspan="4">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </div>
        </div>
    </form>
</body>
</html>
