using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;


namespace panliang
{
    public partial class cartshow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] != null)
            {
                Label1.Text = Session["uname"].ToString();

            }
            else
            {
                //Label1.Text = "请登录";
                Server.Transfer("userlogin.aspx");
            }


            string strco = "server=localhost;user id=root;password=mysql;database=test";
            MySqlConnection msco = new MySqlConnection(strco);
            msco.Open();
            //// Response.Write("连接成功！");
           
            string sql = "select * from cart";
            //// MySqlCommand cmd1 = new MySqlCommand(sql, msco);


            MySqlDataAdapter msdapt = new MySqlDataAdapter(sql, msco);
            DataSet ds = new DataSet();
            msdapt.Fill(ds, "cart");

            GridView1.DataSource = ds.Tables["cart"];
            GridView1.DataBind();

           

            msco.Close();

            string strcon = "server=localhost;user id=root;password=mysql;database=test";
            MySqlConnection mscon = new MySqlConnection(strcon);
            mscon.Open();
            string sql1 = "delete from cart where ID='" + Request.QueryString["id"] + "';";
            string sql2 = "select * from cart where 用户名='" + Session["uname"].ToString() + "'";
            string strsql = sql1 + sql2;
            MySqlDataAdapter msdap = new MySqlDataAdapter(strsql, mscon);
            DataSet dsr = new DataSet();
            msdap.Fill(dsr, "cart");
            GridView1.DataSource = dsr.Tables["cart"];
            GridView1.DataBind();
            mscon.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/show.aspx");
        }
    }
}