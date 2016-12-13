using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Admin_AdminCoinsAdd : System.Web.UI.Page
{
    int x;
    string st = "";
    SqlConnection cn;
    SqlCommand cm;
    SqlDataReader dr;
    DataBaseOperations obj = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.ConnectDatabse();
        cn = new SqlConnection();
        st = WebConfigurationManager.AppSettings["cn"];
        cn.ConnectionString = st;
        cn.Open();

        if (Session["a_id"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void BtnCnAdd_Click(object sender, EventArgs e)
    {
        st = "select coin_amt from tbl_coins where coin_amt=" + TxtCoinQnty.Text + "";
        cm = new SqlCommand(st, cn);
        dr = cm.ExecuteReader();
        if (dr.Read() == true)
        {
            lbl_display.Text = "Quantity Already Exist";
            lbl_display.ForeColor = System.Drawing.Color.Red;
            dr.Dispose();
        }
        else
        {
            dr.Dispose();
            st = "insert into tbl_coins(coin_amt) values(" + TxtCoinQnty.Text + ")";
            cm = new SqlCommand(st, cn);
            x = cm.ExecuteNonQuery();
            if (x == 1)
            {
                lbl_display.Text = "Quantity added";
                lbl_display.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}