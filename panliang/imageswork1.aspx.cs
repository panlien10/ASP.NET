using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace panliang
{
    public partial class imageswork1 : System.Web.UI.Page
    {
        //string city = "";
        string gender = "男";
        string hobby = "";
        

        protected void Page_Load(object sender, EventArgs e)
        {

            //string strcon = "server=localhost;user id=root;password=mysql;database=test";
            //MySqlConnection mscon = new MySqlConnection(strcon);
            //mscon.Open();
            //Response.Write("连接成功！");
            //mscon.Close();


            //Response.Write("<br/>总访问人数是：" + Application["AppCount"].ToString());
            // Response.Write("<br/>当前在线人数是：" + Application["OnlineCount"].ToString());
            Label8.Text = "总访问人数是：" + Application["AppCount"].ToString();
            Label9.Text = "当前在线人数是：" + Application["OnlineCount"].ToString();
            string username = TextBox1.Text;
            //LinkButton1.PostBackUrl = "~/userlogin.aspx?username=" + username;
            //HyperLink1.NavigateUrl= "~/userlogin.aspx?username=" + username;
            //ImageButton2.PostBackUrl= "~/userlogin.aspx?username=" + username;



            string name="";
            string pwd="";
            string repwd = "";
            //string username = TextBox1.Text;
            //Session["TextBox1"] = username;

            string src = "";
            
            if (Request.QueryString["src"] != null)
            {
                src = Request.QueryString["src"].ToString();


                if (!src.Equals(""))
                {
                    ImageButton1.ImageUrl = "images/" + src;
                }
            }
            if (Page.IsPostBack)
            {
                name = TextBox1.Text;
                pwd = TextBox2.Text;
                repwd = TextBox3.Text;
                 //DateTime birth = DateTime.Parse(TxtDate.Text);
                DateTime birth = Calendar1.SelectedDate;
                if (RadioButton2.Checked)
                
                    gender = RadioButton2.Text;
                    else
                        gender = RadioButton1.Text;
                   // city = DropDownList1.SelectedValue + ListBox1.SelectedValue;
                    for(int i = 0; i < CheckBoxList1.Items.Count; i++)
                    {
                        if (CheckBoxList1.Items[i].Selected)
                        {
                            hobby += CheckBoxList1.Items[i].Value;
                        }
                        Label6.Text = name + "\r\n" + gender + hobby+birth;
                       // Label7.Text = city;
                    }

                //Response.Write("<script language = 'javascript' type = 'text/javascript' > alert('注册成功')</script>");
                //Response.Redirect("userlogin.aspx");


            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //string username = TextBox1.Text;
            //string password = TextBox2.Text;
            //string strcon = "server=localhost;user id=root;password=mysql;database=test";
            //MySqlConnection mscon = new MySqlConnection(strcon);
            //mscon.Open();
            //Response.Write("连接成功！");


            //String sql = "INSERT INTO user(用户账号,密码) VALUES('" + username + "','" + password + "')"; // 没有判断重复插入
            //MySqlCommand cmd = new MySqlCommand(sql, mscon);
            //cmd.ExecuteNonQuery();
            //Label1.Text= "注册成功";
            //mscon.Close();


            //Label7.Text = city;
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.TodaysDate = Calendar1.TodaysDate.AddYears(-1);
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TxtDate.Text = Calendar1.SelectedDate.ToLongDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.TodaysDate = Calendar1.TodaysDate.AddYears(1);
        }

     

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel1.Visible = !(Panel1.Visible);
            if (Panel1.Visible)
                Button4.Text = "隐藏日历";
            else
                Button4.Text = "显示日历";
            
        }

        protected void TxtDate_TextChanged(object sender, EventArgs e)
        {
           
        }

       // protected void Button5_Click(object sender, EventArgs e)
       // {
           // Panel1.Visible = false;
       // }

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    ListBox1.Items.Clear();
        //    switch (DropDownList1.SelectedIndex)
        //    {
        //        case 0:
        //            ListBox1.Items.Add("朝阳区");

        //            ListBox1.Items.Add("西城区");
        //            ListBox1.Items.Add("海淀区");
        //            break;
        //        case 1:
        //            ListBox1.Items.Add("沈阳");

        //            ListBox1.Items.Add("大连");
        //            ListBox1.Items.Add("朝阳");
        //            break;


        //    }
        //}

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            TxtDate.Text = " ";
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            string repwd = TextBox3.Text;
            string city = TextBox4.Text;
            string phone = TextBox5.Text;
           // string brith = TxtDate.Text;
            string strcon = "server=localhost;user id=root;password=mysql;database=test";
            try
            {

                if (password.Equals(repwd))
                {
                    MySqlConnection mscon = new MySqlConnection(strcon);
                    mscon.Open();
                   // Response.Write("连接成功！");


                    String sql = "INSERT INTO user(用户账号,密码,默认地址,手机号,生日,性别,爱好) VALUES('" + username + "','" + password + "','" + city + "','" + phone + "','" + TxtDate.Text + "','" + gender + "','" + hobby + "')"; // 没有判断重复插入

                    MySqlCommand cmd = new MySqlCommand(sql, mscon);

                    int flag = cmd.ExecuteNonQuery();

                    //if (password.Equals(repwd))
                    //{
                    //    mscon = new MySqlConnection(strcon);
                    //    mscon.Open();

                    //    strsql = "insert into user(username,password,gender,city,hobby,birthday) values('" +
                    //        username + "','" + password + "','" + gender + "','" + city + "','" + hobby + "','" + birth + "')";
                    //}

                    //cmd = new MySqlCommand(sql, mscon);

                    // flag = mscmd.ExecuteNonQuery();

                    if (flag > 0)
                        Label7.Text = "注册成功！";
                   
                    
                    //else
                    //    Label7.Text = "注册失败,请重试一次或取另一个用户名重试";


                    mscon.Close();
                }
                else
                    Label7.Text = "注册失败,请重试一次";


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            
            // Label7.Text= "注册成功";
            // mscon.Close();


        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("images/") + FileUpload1.FileName);
            ImageButton1.ImageUrl = "images/" + FileUpload1.FileName;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            //Session.Abandon();
          //  Page.ClientScript.RegisterStartupScript(this.GetType(), "myscript", "window.close()");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            
            
        }

        protected void Button9_Click1(object sender, EventArgs e)
        {
           
        }

        protected void Button9_Click2(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            Response.Redirect("~/userlogin.aspx?username=" + username);
        }
    }
}