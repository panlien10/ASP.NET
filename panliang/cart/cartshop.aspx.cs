using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace panliang
{
    public partial class cartshop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["uname"] != null)
                Label1.Text = "在线用户：" + Session["uname"].ToString();
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
                    Session["fruit"] = Session["fruit"] + " 苹果 ";
                else
                    Session["fruit"] = " 苹果";
            if (CheckBox2.Checked)
                if (Session["fruit"] != null)
                    Session["fruit"] = Session["fruit"] + " 葡萄 ";
                else
                    Session["fruit"] = " 葡萄 ";
            if (CheckBox3.Checked)
                if (Session["fruit"] != null)
                    Session["fruit"] = Session["fruit"] + " 樱桃 ";
                else
                    Session["fruit"] = " 樱桃 ";
            if (CheckBox4.Checked)
                if (Session["fruit"] != null)
                    Session["fruit"] = Session["fruit"] + " 草莓";
                else
                    Session["fruit"] = " 草莓";
        }
    
    }
}