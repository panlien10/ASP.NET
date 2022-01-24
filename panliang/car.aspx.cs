using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace panliang.Properties
{
    public partial class car : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = Request.QueryString["fruitname"].ToString();
            //string username = Session["uname"].ToString();
            if (Session["uname"] != null)
            {
                Label1.Text = Session["uname"].ToString();

            }
            else
            {
                //Label1.Text = "请登录";
                Server.Transfer("userlogin.aspx");
            }
            //string strcon = "server=localhost;user id=root;password=mysql;database=test";
            //MySqlConnection mscon = new MySqlConnection(strcon);
            //mscon.Open();
            //// Response.Write("连接成功！");


            //String sql = "INSERT INTO cart(用户名) VALUES('" + Session["uname"].ToString() + "' )"; // 没有判断重复插入

            //MySqlCommand cmd = new MySqlCommand(sql, mscon);

            //int flag = cmd.ExecuteNonQuery();
            //if (flag > 0)
            //   // Label1.Text = "加入购物车成功！";
            //mscon.Close();
            
            string strco = "server=localhost;user id=root;password=mysql;database=test";
            MySqlConnection msco = new MySqlConnection(strco);
            msco.Open();
            // Response.Write("连接成功！");
            string strsql = "select * from fruit where 水果名='" + Request.QueryString["fruitname"] + "'";
            MySqlCommand scmd = new MySqlCommand(strsql, msco);
            MySqlDataReader sdr = scmd.ExecuteReader();
            if (sdr.Read())
            {
                Image1.ImageUrl = "~/image/" + sdr["图片"].ToString();
                Session["imageaddress"] = sdr["图片"].ToString();
                Label3.Text = sdr["水果名"].ToString();
                Label2.Text = sdr["产地"].ToString();
                Label4.Text = sdr["原价"].ToString();

            }



            msco.Close();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string num = TextBox1.Text;

            string strcon = "server=localhost;user id=root;password=mysql;database=test";
            MySqlConnection mscon = new MySqlConnection(strcon);
            mscon.Open();
            // Response.Write("连接成功！");


            String sql = "INSERT INTO cart(用户名,购买商品名,购买数量,image) VALUES('" + Session["uname"].ToString() + "','" + Request.QueryString["fruitname"] + "','"+num+"' ,'" + "/image/"+Session["imageaddress"].ToString()+"' )"; // 没有判断重复插入

            MySqlCommand cmd = new MySqlCommand(sql, mscon);

            int flag = cmd.ExecuteNonQuery();
            if (flag > 0)
                // Label1.Text = "加入购物车成功！";
                Response.Redirect("cartshow.aspx?fruitname="+Request.QueryString["fruitname"].ToString());
            mscon.Close();
        }
    }
}