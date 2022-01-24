<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imageswork1.aspx.cs" Inherits="panliang.imageswork1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="css/main1.css"rel="stylesheet"type="text/css" />
    <title></title>
    <style>
        .head{
            text-align:center;
            font-size:4vw;
        }
        .auto-style2 {
            margin-bottom: 0px;
        }
        .auto-style3 {
            width: 536px;
        }
        .auto-style4 {
            width: 167px;
        }
        .auto-style5 {
            height: 25px;
        }
        .auto-style6 {
            height: 60px;
        }
        .auto-style8 {
            width: 100%;
            height: 633px;
        }
        </style>
</head>
<body style="height: 851px">
    <form id="form1" runat="server">
       <div class="wrapper">
            <br/>
            <div class="header" >
               
                <h1 >水果商店</h1></div>
            
        </div>
   
        <table class="auto-style8">
            <tr>
                <td rowspan="2" class="auto-style3">
                    <h5 style="color:red">                                                                                                                                                                                                                                                &nbsp;<br />
                                                                                                                                                                                                                                                                    <asp:Label ID="Label8" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                                                                                                                                                                                                                                                                    <br />
                  </h5>
                                                                                                                                                                                                                                                                    </td>
                <td rowspan="5" class="auto-style4">
                    <asp:Label ID="Label7" runat="server" BackColor="White" Height="60px" Width="120px" ForeColor="Red"></asp:Label>
                </td>
                <td colspan="2">
                    <br />
&nbsp;<br />
&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="头 像"></asp:Label>
&nbsp;<br />
&nbsp;<br />
                    <br />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="101px" ImageUrl="~/images/点赞.png" CssClass="auto-style2" PostBackUrl="~/addpicture.aspx" OnClick="ImageButton1_Click" Width="155px" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="上传" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="23px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="输入不能为空！"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="密 码"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="22px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td colspan="2">
                    再次确认密码</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="密码不一致！"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style6" colspan="2">
                    <asp:Label ID="Label4" runat="server" Text="地 址"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td rowspan="5" class="auto-style3">
                    <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile1.xml" Height="70px" Width="450px" />
                  
                                                                                                                                                                                                                                                                    </td>
                <td rowspan="5" class="auto-style4">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="生 日"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtDate" runat="server" OnTextChanged="TxtDate_TextChanged"></asp:TextBox>

                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="显示日历" />
&nbsp;<asp:Panel ID="Panel1" runat="server" Visible="False">
                    
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="&lt;&lt;" OnClick="Button2_Click" />
                    <asp:Button ID="Button1" runat="server" Text="&gt;&gt;" OnClick="Button1_Click" />
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Height="25px"></asp:Calendar>
                        </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style5">
                    性 别</td>
                <td class="auto-style5">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="男" Checked="True" GroupName="1" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text="女" GroupName="1" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    手机号</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="号码非法！请输入大陆手机号码！" ValidationExpression="^(?:\+?86)?1(?:3\d{3}|5[^4\D]\d{2}|8\d{3}|7[^0129\D](?(?&lt;=4)(?:0\d|1[0-2]|9\d)|\d{2})|9[189]\d{2}|66\d{2})\d{6}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    爱 好</td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>篮球</asp:ListItem>
                        <asp:ListItem>音乐</asp:ListItem>
                        <asp:ListItem>阅读</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="退出" Visible="False" />
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="取消" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="提交" OnClick="Button3_Click1" />
                &nbsp;
                    <asp:Button ID="Button9" runat="server" OnClick="Button9_Click2" Text="去登录" />
&nbsp;&nbsp;
                </td>
            </tr>
            </table>
      
       <p style="background-color: #C0C0C0">
           您的注册信息：<asp:Label ID="Label6" runat="server"></asp:Label>
       </p>
    </form>
     
</body>
</html>
