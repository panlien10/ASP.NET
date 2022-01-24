using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace panliang
{
    public partial class show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string strcon = "server=localhost;user id=root;password=mysql;database=test";
            //MySqlConnection mscon = new MySqlConnection(strcon);
            //mscon.Open();
            //Response.Write("连接成功！");

            //String sql = "select * from fruit";//SQL语句实现表数据的读取
            //MySqlCommand cmd = new MySqlCommand(sql, mscon);
            //MySqlDataReader sdr = cmd.ExecuteReader();
            //DataTable tb1 = new DataTable();
            //DataColumn dc

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //string strcon = "server=localhost;user id=root;password=mysql;database=test";
            //MySqlConnection mscon = new MySqlConnection(strcon);
            //mscon.Open();
            //// Response.Write("连接成功！");


            //String sql = "INSERT INTO cart(购买商品名) VALUES('" + fruitname + "' )"; // 没有判断重复插入

            //MySqlCommand cmd = new MySqlCommand(sql, mscon);

            //int flag = cmd.ExecuteNonQuery();
            //if (flag > 0)
            //    // Label1.Text = "加入购物车成功！";
            //    mscon.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}