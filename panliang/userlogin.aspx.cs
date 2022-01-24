using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using MySql.Data.MySqlClient;
using System.Data;

namespace panliang
{
    public partial class userlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<br/>总访问人数是：" + Application["AppCount"].ToString());
            Response.Write("<br/>当前在线人数是：" + Application["OnlineCount"].ToString());

            //if (Session["TextBox1"] != null)
            //    TextBox1.Text = Session["TextBox1"].ToString();
            if (Request.QueryString["username"] != null)
            {
                TextBox1.Text = Request.QueryString["username"].ToString();
            }
            
            //Request.QueryString["fruitname"].ToString();

            //string username = "";
            //if (Request.Params["TextBox1"] != null)
            //    username = Request.Params["TextBox1"].ToString();
            //TextBox1.Text = username;
            //Server.Transfer("~/imageswork1.aspx");
            if (Request.Cookies["color"] != null)
            {
                Panel1.BackColor = Color.FromArgb(int.Parse(Request.Cookies["color"].Value));

            }

            string name = "";
            string pwd = "";
            if (Page.IsPostBack)
            {
                name = TextBox1.Text;
                pwd = TextBox2.Text;
                Session["uname"] = name;

            }
            //Session["uname"] = name;
            Label lbl1 = new Label();
            PlaceHolder1.Controls.Add(lbl1);
            lbl1.Text = name + "</br>" + pwd;

            if (Session["uname"] != null)
                Label1.Text = "请登录！";
            // Label1.Text = "在线用户：" + Session["uname"].ToString();
            else
            {
                Label1.Text = "请登录！";
                //Server.Transfer("userlogin.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            string strcon = "server=localhost;user id=root;password=mysql;database=test";
            MySqlConnection mscon = new MySqlConnection(strcon);
            mscon.Open();
            Response.Write("连接成功！");

            String sql = "select 密码 from user where 密码='" + password + "'";//SQL语句实现表数据的读取
            MySqlCommand cmd = new MySqlCommand(sql, mscon);
            MySqlDataReader sqlDataReader = cmd.ExecuteReader();
            if (sqlDataReader.HasRows)  //如果能查到，说明该用户密码存在
            {
                Label2.Text="登陆成功";
                Response.Redirect("usermain2.aspx");
                //closeflag = true;
                //this.Close();
            }
            else
            {
                 Label2.Text="账号或密码错误或未注册";
            }
            mscon.Close();
            //Response.Redirect("usermain.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpCookie mycolor = new HttpCookie("color", Color.White.ToArgb().ToString());
            if (RadioButton1.Checked)
                mycolor = new HttpCookie("color", RadioButton1.BackColor.ToArgb().ToString());
            if (RadioButton2.Checked)
                mycolor = new HttpCookie("color", RadioButton2.BackColor.ToArgb().ToString());
            if (RadioButton3.Checked)
                mycolor = new HttpCookie("color", RadioButton3.BackColor.ToArgb().ToString());
            if (RadioButton4.Checked)
                mycolor = new HttpCookie("color", RadioButton4.BackColor.ToArgb().ToString());
            mycolor.Expires = DateTime.Now.AddMinutes(2);
            Response.Cookies.Add(mycolor);
        }
    }
}