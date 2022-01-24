using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace panliang.cart
{
    public partial class fruit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] != null)
                Label1.Text = "欢迎！" + Session["uname"].ToString();
            else
            {
                Label1.Text = "请登录";
                Server.Transfer("userlogin.aspx");
            }   

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
                if (Session["fruit"] != null)
                    Session["fruit"] = Session["fruit"] + " 橘子 ";
                else
                    Session["fruit"] = " 橘子";
            if (CheckBox2.Checked)
                if (Session["fruit"] != null)
                    Session["fruit"] = Session["fruit"] + " 荔枝 ";
                else
                    Session["fruit"] = " 荔枝 ";
            if (CheckBox3.Checked)
                if (Session["fruit"] != null)
                    Session["fruit"] = Session["fruit"] + " 毛桃 ";
                else
                    Session["fruit"] = " 毛桃 ";
            
        }
    }
}