<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userindex.aspx.cs" Inherits="panliang.userindex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/main1.css"rel="stylesheet"type="text/css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 346px;
        }
        .auto-style2 {
            width: 148px;
        }
        .auto-style3 {
            width: 134px;
        }
         .showp{
    text-align:center;
    color:red;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="wrapper">
            <br/>
            <div class="header">
               
                <h1 >水果商店</h1>
               
            </div>
             <p class="showp">点击商品图片查看商品详情！</p>
        </div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="退出登录" />
                </td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/cartshow.aspx">购物车</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/order1.aspx">查看历史订单</asp:HyperLink>
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="12">&nbsp;</td>
            </tr>
            </table>
        <div style="width:100%">
           <%-- <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>--%>
             <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
            RepeatColumns="4" ItemStyle-ForeColor="#000000" ItemStyle-BackColor="White" AlternatingItemStyle-BackColor="#E1FFFF" CssClass="auto-style1" Width="1455px">
                
            <ItemTemplate>
              <div>
                  
               <%-- <asp:Label ID="bookNameLabel" runat="server" Text='<%# Eval("水果名") %>' Width="150" />
                  <div style="color:#A9A9A9"><h5>原价:<asp:Label ID="Label1" runat="server" Text='<%# Eval("原价") %>' />¥</div>
                  </div>--%>
                <br />
              
                <asp:ImageButton ID="Image1" runat="server" ImageUrl = '<%# "~/image/"+Eval("图片") %>' Width="300" Height="250" PostBackUrl='<%# "~/xianqinye.aspx?bname="+Eval("水果名") %>' >
                    
                </asp:ImageButton>
               
                <br />
                 <div style="background-color:#FFFACD">
                  
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("水果名") %>' Width="150" />
                  <div style="color:#A9A9A9"><h5>原价:<asp:Label ID="Label3" runat="server" Text='<%# Eval("原价") %>' />¥
                       <p style="color:#FF4500">现价:<asp:Label ID="Label6" runat="server" Text='<%# Eval("现价") %>' />¥
                      </p>
                      <h5>
                     产地：<asp:Label ID="Label4" runat="server" Text='<%# Eval("产地") %>' />
                          <br></br>
                     库存：<asp:Label ID="Label5" runat="server" Text='<%# Eval("数量") %>' />
                          </h5>
                      </div>
                   <%--  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/car.aspx?fruitname="+Eval("水果名") %>'>加入购物车</asp:HyperLink>--%>
                     <asp:Button ID="Button1" runat="server" Text="加入购物车" PostBackUrl='<%# "~/car.aspx?fruitname="+Eval("水果名") %>' />

                  </div>
               

            </ItemTemplate>
                
               
                
            <AlternatingItemTemplate>
             <%-- <div>
                <asp:Label ID="bookNameLabel" runat="server" Text='<%# Eval("水果名") %>' Width="150" />
                  <div style="color:#A9A9A9"><h5>原价:<asp:Label ID="Label1" runat="server" Text='<%# Eval("原价") %>' />¥</div>
                  </div>--%>
                <br />
                
                <asp:ImageButton ID="Image2" runat="server" ImageUrl = '<%# "~/image/"+Eval("图片") %>'  Width="300" Height="250" PostBackUrl='<%# "~/xianqinye.aspx?bname="+Eval("水果名") %>' >
                </asp:ImageButton>
                <br />
                 <div style="background-color:#FFFACD">
                <asp:Label ID="bookNameLabel" runat="server" Text='<%# Eval("水果名") %>' Width="150" />
                  <div style="color:#A9A9A9"><h5>原价:<asp:Label ID="Label1" runat="server" Text='<%# Eval("原价") %>' />¥</h5>
                      
                      <p style="color:#FF4500">现价:<asp:Label ID="Label6" runat="server" Text='<%# Eval("现价") %>' />¥
                      </p>
                      <h5>
                     产地：<asp:Label ID="Label4" runat="server" Text='<%# Eval("产地") %>' />
                          <br></br>
                     库存：<asp:Label ID="Label5" runat="server" Text='<%# Eval("数量") %>' />
                          </h5>
                      </div>
                     <asp:Button ID="Button1" runat="server" Text="加入购物车" PostBackUrl='<%# "~/car.aspx?fruitname="+Eval("水果名") %>' />
                  </div>
               
            </AlternatingItemTemplate>
        </asp:DataList>
            <br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>" SelectCommand="SELECT * FROM fruit"></asp:SqlDataSource>
       <%-- <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/cart/kbai.png" />--%>
    </form>
</body>
</html>
