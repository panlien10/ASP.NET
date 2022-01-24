<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cartshow.aspx.cs" Inherits="panliang.cartshow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/main1.css"rel="stylesheet"type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <br/>
            <div class="header">
                
                
                <h1 >水果商店</h1></div> 
            <p style="text-align:center">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>的购物车</p>
        </div>
        
                 <div style="text-align:right">
            <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" ForeColor="Blue" PostBackUrl="~/userindex.aspx">去买水果</asp:LinkButton>
        &nbsp;
                     <asp:Button ID="Button1" runat="server" ForeColor="Red" OnClick="Button1_Click" Text="退出登录" />
        </div>
        <div style="text-align:center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1445px" Height="194px" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ImageField DataImageUrlField="image" HeaderText="图片" ControlStyle-Height="100" ControlStyle-Width="100">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
                    </asp:ImageField>
                    <asp:BoundField DataField="购买商品名" HeaderText="商品名" />
                    <asp:BoundField DataField="购买数量" HeaderText="购买数量" />

                    <asp:TemplateField HeaderText="操作">
                  <ItemTemplate>
                 <asp:LinkButton ID="lbtn_del2" runat="server" Font-Size="12px"
                    Font-Underline="False" CommandArgument='<%#Eval("id") %>'
                    CommandName='del2' OnClientClick='window.confirm("确定购买？")' PostBackUrl='<%# "~/order.aspx?id="+Eval("ID")%>'>购买 </asp:LinkButton>
                    <asp:LinkButton ID="lbtn_del" runat="server" Font-Size="12px"
                    Font-Underline="False" CommandArgument='<%#Eval("id") %>'
                    CommandName='del' OnClientClick='window.confirm("确定删除？")' PostBackUrl='<%# "~/cartshow.aspx?id="+Eval("ID")%>'>删除 </asp:LinkButton>
                </ItemTemplate>
                <ItemStyle Width="100px" HorizontalAlign="Center" />
                    </asp:TemplateField>
                   <%-- <asp:ButtonField CommandName="Delete" Text="删除" />--%>

                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
