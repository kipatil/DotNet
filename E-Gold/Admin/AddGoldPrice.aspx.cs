using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddGoldPrice : System.Web.UI.Page
{
    int x;
    string st = "";
    SqlConnection cn;
    SqlCommand cm;
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
            fill_rpt();
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        if (btn_save.Text != "Update")
        {
            st = "insert into tbl_gold_price (gold_price) values(" + TxtPriceGram.Text + ")";
            cm = new SqlCommand(st, cn);
            x = cm.ExecuteNonQuery();
            {
                lbl_display.Text = "Gold Price added Successfully";
                lbl_display.ForeColor = System.Drawing.Color.Red;
                fill_rpt();
                TxtPriceGram.Text = "";
            }
        }
        else
        {
            st = "update tbl_gold_price set gold_price=" + TxtPriceGram.Text + " where gp_id=" + btn_save.CommandArgument + "";
            cm = new SqlCommand(st, cn);
            x = cm.ExecuteNonQuery();
            btn_save.Text = "Add";
            lbl_display.Text = "Gold Price updated Successfully";
            lbl_display.ForeColor = System.Drawing.Color.Red;
            fill_rpt();
            TxtPriceGram.Text = "";

        }
    }

    private void fill_rpt()
    {
        st = "select gold_price,convert(varchar(11),ent_date) as ent_date,gp_id from tbl_gold_price order by gp_id desc";
        obj.fill_rptr_ret_sqlda(st, rpt_goldprice);

    }

    protected void edit_price(object sender, EventArgs e)
    {
        LinkButton lnk = sender as LinkButton;
        btn_save.CommandArgument = lnk.CommandArgument;
        TxtPriceGram.Text = lnk.CommandName;
        btn_save.Text = "Update";
    }
}