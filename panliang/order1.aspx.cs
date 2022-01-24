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
    public partial class order1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text=DateTime.Now.ToString();
            if (Session["uname"] != null)
            {
                Label5.Text = Session["uname"].ToString();
            }

            string strco = "server=localhost;user id=root;password=mysql;database=test";
            MySqlConnection msco = new MySqlConnection(strco);
            msco.Open();
            //// Response.Write("连接成功！");

            string sql = "select * from shopping where uname='" + Session["uname"].ToString() + "'";
            //// MySqlCommand cmd1 = new MySqlCommand(sql, msco);


            MySqlDataAdapter msdapt = new MySqlDataAdapter(sql, msco);
            DataSet ds = new DataSet();
            msdapt.Fill(ds, "shopping");

            GridView1.DataSource = ds.Tables["shopping"];
            GridView1.DataBind();
            msco.Close();

            //string strcon = "server=localhost;user id=root;password=mysql;database=test";
            //MySqlConnection mscon = new MySqlConnection(strcon);
            //mscon.Open();
            //string sql1 = "delete from shopping where ida='" + Request.QueryString["ida1"] + "';";
            //string sql2 = "select * from shopping ";
            //string strsql = sql1 + sql2;
            //MySqlDataAdapter msdap = new MySqlDataAdapter(strsql, mscon);
            //DataSet dsr = new DataSet();
            //msdap.Fill(dsr, "shopping");
            //GridView1.DataSource = dsr.Tables["shopping"];
            //GridView1.DataBind();
            //mscon.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/show.aspx");
        }
    }
}