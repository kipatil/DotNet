using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class OrderForGold : System.Web.UI.Page
{
    string st1 = "";
    string st = "";
    int x;
    public static double coin_type, coin_qty, coin_amt, g_amt, t_amt, bal;

    SqlConnection cn;
    SqlCommand cm;
    SqlDataReader dr;
    DataBaseOperations ctx = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        ctx.ConnectDatabse();
        cn = new SqlConnection();
        st1 = WebConfigurationManager.AppSettings["cn"];
        cn.ConnectionString = st1;
        cn.Open();

         if (Session["fname"] == null)
        {
            Response.Redirect("userloginpage.aspx");
        }
        if (Session["u_id"] == null)
        {
            Response.Redirect("userloginpage.aspx");
        }
        if (!IsPostBack)
        {
                DrpDwnSelectType.Items.Add("-- Select --");
                DrpDwnSelectType.Items.Add(" Gold Coin ");
                DrpDwnSelectType.Items.Add(" Certificate ");

                DrpDwnSelectCoin.Items.Add("-- Select --");

                st = "SELECT coin_amt FROM tbl_coins ORDER BY coin_amt";
                cm = new SqlCommand(st, cn);

                dr = cm.ExecuteReader();
                if (dr.HasRows == true)
                {
                    while (dr.Read() == true)
                    {
                        if (dr[0].ToString().Trim() != "" || dr[0].ToString().Length != 0)
                        {
                            DrpDwnSelectCoin.Items.Add(dr[0].ToString().Trim());
                        }
                    }
                }
                dr.Dispose();
        }
        st = "select gold_price from tbl_gold_price ";
        cm = new SqlCommand(st, cn);
        dr = cm.ExecuteReader();
        if (dr.Read() == true)
        {
            LblGldPice.Text = dr[0].ToString();
            dr.Dispose();
        }
    }
    protected void TxtQty_TextChanged(object sender, EventArgs e)
    {
        coin_type = double.Parse(DrpDwnSelectCoin.SelectedValue.ToString());
        coin_qty = double.Parse(TxtQty.Text);
     
        coin_amt = coin_type * coin_qty;
        g_amt = double.Parse(LblGldPice.Text);
        t_amt = coin_amt * g_amt;
        LblTotalAmt.Text = t_amt.ToString();
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        st = "insert into tbl_gold_sale (sale_type,coin_type,qty,gold_price,tot_amt,user_id,status) values('" + DrpDwnSelectType.SelectedValue.ToString() + "','" + DrpDwnSelectCoin.SelectedValue.ToString() + "'," + TxtQty.Text + "," + g_amt + "," + t_amt + "," + Session["u_id"] + ",0)";
        cm = new SqlCommand(st, cn);
        x = cm.ExecuteNonQuery();
        if (x == 1)
        {
            LblResult.Text = "Done Successfull";
            LblResult.ForeColor = System.Drawing.Color.Red;
            st = "select balance from tbl_bankac order by bd_id desc";
            cm = new SqlCommand(st, cn);
            dr = cm.ExecuteReader();
            if (dr.Read() == true)
            {
                bal = double.Parse(dr[0].ToString());
                bal = bal + t_amt;
            }
            else
            {
                LblResult.Text = "balance not found in bank a/c";
                bal = t_amt;
            }
            dr.Dispose();
            //st = "insert into tbl_bankac (credit,from_agent,balance) values("+t_amt+","+Session["ag_name"]+","+bal+")";
            st = "insert into tbl_bankac (credit,from_agent,balance) values(" + LblTotalAmt.Text + ",'" + Session["fname"] + "'," + bal + ")";
            cm = new SqlCommand(st, cn);
            x = cm.ExecuteNonQuery();
            if (x == 1)
            {
                //System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
                //msg.From = new MailAddress("email@gmail.com");
                //msg.To.Add(Session["email_id"].ToString());
                //msg.Subject = "Hello " + Session["fname"].ToString() + " your purchase successful.";
                //string mail_body = "Gold Type: "+DrpDwnSelectType.SelectedItem.ToString()+"<br/>Coins of: "+DrpDwnSelectCoin.SelectedItem.ToString()+"<br/>Qty: " +TxtQty.Text+"";
                //AlternateView html_mail = AlternateView.CreateAlternateViewFromString(mail_body, null, "text/html");
                //msg.AlternateViews.Add(html_mail);
                //SmtpClient smtp = new SmtpClient();
                //smtp.Host = "smtp.gmail.com";
                //smtp.Port = 587;
                //smtp.Credentials = new System.Net.NetworkCredential("email@gmail.com", "password");
                //smtp.EnableSsl = true;
                //smtp.Send(msg);
                //msg = null;

                LblResult.Text = "Thanks.. Visit Again. Delivery date will be confirmed soon.";
                LblResult.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}