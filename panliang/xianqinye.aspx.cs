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
    public partial class xianqinye : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fruitname1 = "";
            if (Request.Params["bname"] != null)
                fruitname1 = Request.Params["bname"].ToString();
            Label1.Text = fruitname1;

            string strcon = "server=localhost;user id=root;password=mysql;database=test";
            MySqlConnection mscon = new MySqlConnection(strcon);
            mscon.Open();
            Response.Write("连接成功！");

            String sql = "select * from tuaddress where 水果名='" + fruitname1 + "'";//SQL语句实现表数据的读取
            MySqlCommand cmd = new MySqlCommand(sql, mscon);


            MySqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Image1.ImageUrl = "~/image/详情图片/" + sdr["图片地址"].ToString();

            // Label4.Text = sdr["原价"].ToString();

            }
            mscon.Close();
        }
    }
}