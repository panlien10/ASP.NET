using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace panliang
{
    public partial class usermain2 : System.Web.UI.Page
    {
        protected static int vote1, vote2, vote3;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] != null)
                Label1.Text = Session["uname"].ToString();
            else
            {
                Label1.Text = "请登录";
                Server.Transfer("userlogin.aspx");
            }

        }
        protected string GetPercent(int vote)
        {
            decimal percent;
            decimal votesum = vote1 + vote2 + vote3;
            if (votesum == 0)
                return "0%";
            else
            {
                percent = 100 * (Convert.ToDecimal(vote) / Convert.ToDecimal(votesum));
                return percent.ToString("n2") + "%";
                

            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            vote2 = vote1 + 2;
            this.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            vote3 = vote3 + 3;
            this.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart/fruit.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart/cartshop.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            vote1 = vote1 + 1;
            this.DataBind();
        }
    }
}