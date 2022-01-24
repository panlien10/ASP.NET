<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="panliang.userlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/main1.css"rel="stylesheet"type="text/css" />
    <title></title>
    <style>
        
        h2 {
            text-align: center;
            font-size: 4vw;
        }
         table{
            text-align:center;
            margin-top: 10vw;
	        margin-bottom: 3vw;
        }
       
        .auto-style1 {
            width: 183px;
        }
        .auto-style2 {
            height: 600px;
            width: 366px;
        }
        .auto-style3 {
            width: 65px;
        }
        .auto-style4 {
            width: 100%;
            height: 546px;
        }
        .auto-style5 {
            width: 65px;
            height: 17px;
        }
        .auto-style6 {
            width: 150px;
            height: 17px;
        }
        .auto-style12 {
            width: 150px;
        }
        .auto-style13 {
            width: 65px;
            height: 35px;
        }
        .auto-style15 {
            width: 65px;
            height: 49px;
        }
        .auto-style17 {
            width: 150px;
            height: 35px;
        }
        .auto-style20 {
            width: 65px;
            height: 18px;
        }
        .auto-style21 {
            width: 150px;
            height: 18px;
        }
        .auto-style22 {
            width: 150px;
            height: 49px;
        }
        </style>
    
</head>
<body >
    <form id="form1" runat="server">
        <div  >
           <div class="wrapper">
            <br/>
            <div class="header">
               
                <h1 >水果商店</h1></div>
            
        </div>
            <br />
            
            <asp:RadioButton ID="RadioButton1" runat="server" BackColor="#66FFFF" GroupName="color" /><asp:RadioButton ID="RadioButton2" runat="server" BackColor="#FFFFCC" GroupName="color" /><asp:RadioButton ID="RadioButton3" runat="server" BackColor="#FFCCFF" GroupName="color" /><asp:RadioButton ID="RadioButton4" runat="server" BackColor="White" GroupName="color" />
            <asp:Button ID="Button2" runat="server" Text="确认" OnClick="Button2_Click" /><br />
            <asp:Panel ID="Panel1" runat="server" Height="672px"> <table class="auto-style4">
                <tr>
                    <td rowspan="8" class="auto-style2">
                        <marquee onmouseover=stop() onmouseout=start() scrollAmount="20" loop=infinite deplay="0">
						<img src="images/1.png" ><img src="images/2.png"></marquee>
                    </td>
                    <td rowspan="8" class="auto-style1">
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                    </td>
                    <td class="auto-style15">头像</td>
                    <td class="auto-style22">
                        <asp:ImageMap ID="ImageMap1" runat="server" Height="78px" ImageUrl="~/images/点赞.png" Width="72px">
                        </asp:ImageMap>
                    </td>
                    <td class="auto-style22">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">用户名</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style3">密码</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style21">&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
&nbsp;</td>
                    <td class="auto-style21">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/imageswork1.aspx">去注册</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td style="width: 150px">
                        &nbsp;</td>
                    <td style="width: 150px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td style="width: 150px">
                    &nbsp;&nbsp;
                        </td>
                    <td style="width: 150px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td style="width: 150px">&nbsp;</td>
                    <td style="width: 150px">&nbsp;</td>
                </tr>
            </table>
                </asp:Panel>
        </div>
    </form>
</body>
</html>
