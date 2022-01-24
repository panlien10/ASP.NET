using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace panliang
{
    public partial class payup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["fruit"]!=null)
            {
                Label1.Text = Session["fruit"].ToString();

            }
            if (Session["uname"] != null)
                Label2.Text = "在线用户：" + Session["uname"].ToString();
            else
            {
                Label2.Text = "请登录";
                Server.Transfer("userlogin.aspx");
            }
        }
    }
}