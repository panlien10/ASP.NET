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
    public partial class order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Session["uname"] != null)
                Label5.Text = Session["uname"].ToString();

            string strco = "server=localhost;user id=root;password=mysql;database=test";
            MySqlConnection msco = new MySqlConnection(strco);
            msco.Open();
            // Response.Write("连接成功！");
            string strsql = "select * from cart where ID='" + Request.QueryString["id"] + "'";
            MySqlCommand scmd = new MySqlCommand(strsql, msco);
            MySqlDataReader sdr = scmd.ExecuteReader();
            if (sdr.Read())
            {
                Image1.ImageUrl = "~" + sdr["image"].ToString();
               // Label3.Text = Image1.ImageUrl;
                 Session["imageaddress1"] = sdr["image"].ToString();
                Label1.Text = sdr["购买商品名"].ToString();
                Session["fruitname1"] = sdr["购买商品名"].ToString();
                Label2.Text = sdr["购买数量"].ToString();

                Session["oneprice"] = sdr["购买数量"].ToString();


            }







            msco.Close();

            

            string strc = "server=localhost;user id=root;password=mysql;database=test";
            MySqlConnection msc = new MySqlConnection(strc);
            msc.Open();
            // Response.Write("连接成功！");
            string strsql1 = "select * from fruit";
            MySqlCommand cmd = new MySqlCommand(strsql1, msc);
            MySqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label4.Text = dr["现价"].ToString();
               // Session["onw"] = dr["现价"].ToString();
                int nowprices= int.Parse(dr["现价"].ToString());
                Session["onw"] = nowprices;
                // int pri = int.Parse(prices);
                int allnum= int.Parse(Session["oneprice"].ToString());
                int allprice = nowprices * allnum;
                Session["allprice"] = allprice;
               // Response.Write("'" +nowprices + "'");
               // Response.Write("'" + allnum + "'");
                Label3.Text = allprice.ToString();


               

            }



            msc.Close();

            string strcb2 = "server=localhost;user id=root;password=mysql;database=test";
            MySqlConnection mscb2 = new MySqlConnection(strcb2);
            mscb2.Open();
            // Response.Write("连接成功！");
            string strsql1b2 = "select * from user where 用户账号='"+Session["uname"].ToString()+"'";
            MySqlCommand cmdb2 = new MySqlCommand(strsql1b2, mscb2);
            MySqlDataReader drb2 = cmdb2.ExecuteReader();
            if (drb2.Read())
            {
                Label6.Text = drb2["手机号"].ToString();
                //if (TextBox3.Text != null)
                //{
                //    Session["phone"] = TextBox3.Text;
                //}

                //else
                //{
                    Session["phone"] = Label6.Text;
                //}
               // Session["phone"] = drb2["手机号"].ToString();
               // Session["phone1"] = drb2["手机号"].ToString();
                //int nowprices = int.Parse(drb["现价"].ToString());
                //Session["onw"] = nowprices;
                // int pri = int.Parse(prices);
                // int allnum = int.Parse(Session["oneprice"].ToString());
                // int allprice = nowprices * allnum;
                // Session["allprice"] = allprice;

                Label7.Text = drb2["默认地址"].ToString();


                //if (TextBox4.Text != null)
                //{
                //    Session["address"] = TextBox4.Text;
                //}

                //else
                //{
                   Session["address"] = Label7.Text;
                //}
                //Session["address"] = drb2["默认地址"].ToString();
                




            }



            mscb2.Close();
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
               
            

            string datetime = DateTime.Now.ToString();
            string strcona = "server=localhost;user id=root;password=mysql;database=test";
            MySqlConnection mscona = new MySqlConnection(strcona);
            mscona.Open();
            // Response.Write("连接成功！");


            String sqla = "INSERT INTO shopping(resname,uname,shopname,price,number,allnumber,shopdate,address,phone,image) VALUES('" + TextBox2.Text.ToString()+ "','" + Session["uname"].ToString() + "','" + Session["fruitname1"].ToString() + "','" + Session["onw"].ToString() + "','" + Session["oneprice"].ToString() + "','" + Session["allprice"].ToString() + "','"+datetime+"','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + Session["imageaddress1"].ToString() + "' )"; // 没有判断重复插入

            MySqlCommand cmda = new MySqlCommand(sqla, mscona);

            int flaga = cmda.ExecuteNonQuery();
            if (flaga > 0)
                // Label1.Text = "加入购物车成功！";
                Response.Redirect("order1.aspx");
            mscona.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/userindex.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/userindex.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox3.Text = Session["address"].ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox4.Text= Session["phone"].ToString();
        }
    }
    
}