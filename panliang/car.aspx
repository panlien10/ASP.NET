<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="car.aspx.cs" Inherits="panliang.Properties.car" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/main1.css"rel="stylesheet"type="text/css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 429px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <br/>
            <div class="header">
               
                <h1 >水果商店</h1></div>
            
        </div>
       
        <div style="text-align:center" class="auto-style1">
            <div style="text-align:center">
                <h4>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>的购物车</h4>
                </div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/userindex.aspx">取消选择</asp:HyperLink>
            <br />
             <asp:Image ID="Image1" runat="server" Height="160" Width="150" />
            <br />
           
              <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
             价格：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>¥
            
            <br />
           产地 <asp:Label ID="Label2" runat="server" ></asp:Label>
           

            <br />
           <div style="color:red">请输入您要购买商品的数量！</div><br />
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="数量不能为空！"></asp:RequiredFieldValidator>
             <br />
             <br />
            <div>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认加入购物车" />
            </div>


        </div>
         



    </form>
</body>
</html>
