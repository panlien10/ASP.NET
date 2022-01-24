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
    public partial class peoplelogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            string strcon = "server=localhost;user id=root;password=mysql;database=test";
            MySqlConnection mscon = new MySqlConnection(strcon);
            mscon.Open();
           // Response.Write("连接成功！");

            String sql = "select 密码 from user where 密码='" + password + "'";//SQL语句实现表数据的读取
            MySqlCommand cmd = new MySqlCommand(sql, mscon);
            MySqlDataReader sqlDataReader = cmd.ExecuteReader();
            if (sqlDataReader.HasRows)  //如果能查到，说明该用户密码存在
            {
               
                Response.Redirect("people2.aspx");
                //closeflag = true;
                //this.Close();
            }
            else
            {
                Label1.Text = "账号或密码错误或未注册";
            }
            mscon.Close();
        }
    }
}