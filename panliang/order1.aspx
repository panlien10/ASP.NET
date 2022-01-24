<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order1.aspx.cs" Inherits="panliang.order1" %>

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
             
            
            <div class="header" >
               当前时间： <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                <h1 >水果商店</h1>
                <%--<div> <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></div>--%>
            </div>
               
                    <h4 style="text-align:center"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>的订单列表</h4>
                
             
                 <div style="text-align:right">
            <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" ForeColor="Blue" PostBackUrl="~/userindex.aspx">返回</asp:LinkButton>
        &nbsp;
                     <asp:Button ID="Button1" runat="server" ForeColor="Red" OnClick="Button1_Click" Text="退出登录" />
        </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1441px" BorderStyle="None" Height="50px" HorizontalAlign="Center" BorderColor="White">
                <Columns>
                    <asp:BoundField DataField="ida" HeaderText="订单编号" />
                    <asp:BoundField DataField="resname" HeaderText="收件人姓名" />
                    <asp:BoundField DataField="shopname" HeaderText="购买商品名" />
                    <asp:BoundField DataField="price" HeaderText="价格" />
                    <asp:BoundField DataField="number" HeaderText="数量" />
                    <asp:BoundField DataField="allnumber" HeaderText="总价" />
                    <asp:BoundField DataField="shopdate" HeaderText="下单日期" />
                    <asp:BoundField DataField="phone" HeaderText="手机号" />
                    <asp:BoundField DataField="address" HeaderText="收货地址" />
                    <asp:ImageField DataImageUrlField="image" HeaderText="图片" ControlStyle-Height="100" ControlStyle-Width="120">
<ControlStyle Height="100px" Width="120px"></ControlStyle>
                    </asp:ImageField>
                    <asp:TemplateField HeaderText="操作">
                        <ItemTemplate>
                
                    <asp:LinkButton ID="lbtn_del" runat="server" Font-Size="12px"
                    Font-Underline="False" CommandArgument='<%#Eval("ida") %>'
                    CommandName='del' OnClientClick='window.confirm("确定删除？")' PostBackUrl='<%# "~/3.aspx?ida1="+Eval("ida")%>'>删除 </asp:LinkButton>
                </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
            </div>
    </form>
</body>
</html>
