using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminGoldPurchase : System.Web.UI.Page
{
    string st = "";
    public static double coin_type, coin_qty, coin_amt, g_amt, t_amt, bal;
    int x;
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


        if (!IsPostBack)
        {
            DrpDwnOrdTyp.Items.Add("--Select Type--");
            DrpDwnOrdTyp.Items.Add("Gold Coins");
            DrpDwnOrdTyp.Items.Add("Certificate");
            DrpDwnConTyp.Items.Add("--Select Coin--");
            DrpDwnDealer.Items.Add("--Select Dealer--");

            st = "SELECT coin_amt FROM tbl_coins ORDER BY coin_amt";
            cm = new SqlCommand(st, cn);
            dr = cm.ExecuteReader();
            if (dr.HasRows == true)
            {
                while (dr.Read() == true)
                {
                    if (dr[0].ToString().Trim() != "" || dr[0].ToString().Length != 0)
                    {
                        DrpDwnConTyp.Items.Add(dr[0].ToString().Trim());
                    }
                }

            }
            dr.Dispose();

            st = "select dealer_id,fname+' '+lname as name from tbl_dealer_reg";
            obj.fill_drop_with_id(st, DrpDwnDealer);

            st = "select gold_price from tbl_gold_price order by gp_id desc";
            cm = new SqlCommand(st, cn);
            dr = cm.ExecuteReader();


            if (dr.Read() == true)
            {
                LblGoldPrc.Text = dr[0].ToString();
                dr.Dispose();
            }

        }
    }
    protected void TxtQuantity_TextChanged(object sender, EventArgs e)
    {
        coin_type = double.Parse(DrpDwnConTyp.SelectedValue.ToString());
        coin_qty = double.Parse(TxtQuantity.Text);
        coin_amt = coin_type * coin_qty;
        g_amt = double.Parse(LblGoldPrc.Text);
        t_amt = coin_amt * g_amt;
        LblTotalPrc.Text = t_amt.ToString();
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        st = "select balance from tbl_bankac order by date desc";
        double balance = Convert.ToDouble(obj.read_val(st));
        if (balance > t_amt)
        {
            st = "insert into tbl_gold_purchase (pur_type,coin_type,qty,gold_price,tot_amt,status,dealer_id) values('" + DrpDwnOrdTyp.SelectedValue.ToString() + "','" + DrpDwnConTyp.SelectedValue.ToString() + "'," + TxtQuantity.Text + "," + g_amt + "," + t_amt + ",0," + DrpDwnDealer.SelectedValue + ")";
            cm = new SqlCommand(st, cn);
            x = cm.ExecuteNonQuery();
            if (x == 1)
            {
                lbl_display.Text = "Done Successfull";
                lbl_display.ForeColor = System.Drawing.Color.Red;
                st = "select balance from tbl_bankac order by bd_id desc";
                cm = new SqlCommand(st, cn);
                dr = cm.ExecuteReader();
                if (dr.Read() == true)
                {
                    bal = double.Parse(dr[0].ToString());
                    bal = bal - t_amt;

                }

                else
                {
                    lbl_display.Text = "balance not found in bank a/c";
                    bal = t_amt;
                }
                dr.Dispose();

                st = "insert into tbl_bankac (debit,to_dealer,balance) values(" + t_amt + ",'" + DrpDwnDealer.SelectedValue.ToString() + "'," + bal + ")";
                cm = new SqlCommand(st, cn);
                x = cm.ExecuteNonQuery();
                if (x == 1)
                {
                    lbl_display.Text = "Request sent to dealer.";
                    lbl_display.ForeColor = System.Drawing.Color.Red;
                }

            }
        }
    }
}