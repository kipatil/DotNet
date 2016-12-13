using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dealer_DealerOrders : System.Web.UI.Page
{
    string st = "";
    SqlConnection cn;
    SqlCommand cm;
    SqlDataReader dr;
    DataBaseOperations obj = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.ConnectDatabse();

        if (Session["dealer"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            DrpDwnSelectType.Items.Add("--Select Type--");
            DrpDwnSelectType.Items.Add("Gold Coin");
            DrpDwnSelectType.Items.Add("Certificates");
        }
    }
    protected void DrpDwnSelectType_SelectedIndexChanged(object sender, EventArgs e)
    {
        fill_rpt();
    }
    protected void shipped_gold(object sender, EventArgs e)
    {
        LinkButton lnk = sender as LinkButton;
        RepeaterItem row = (RepeaterItem)(((Control)sender).NamingContainer);
        HiddenField hf_qty = row.FindControl("hf_qty") as HiddenField;
        HiddenField hf_coin_type = row.FindControl("hf_coin_type") as HiddenField;
        st = "update tbl_gold_purchase set status=1 where gp_id=" + lnk.CommandArgument + "";
        int x = obj.UpdateRecord(st);
        if (x > 0)
        {
            st = "update tbl_coins set stock=stock+" + hf_qty.Value + " where coin_amt=" + hf_coin_type.Value + "";
            x = obj.UpdateRecord(st);
            fill_rpt();
        }
    }
    private void fill_rpt()
    {
        if (DrpDwnSelectType.SelectedValue == "Gold Coin")
        {
            rptr_dorder.Visible = true;
            st = "select coin_type,qty,gold_price,tot_amt,convert(varchar(11),pur_date,106) as pur_date,gp_id from tbl_gold_purchase where pur_type='Gold Coins' and dealer_id=" + Session["dealer"].ToString() + " and status=0";
            obj.fill_rptr_ret_sqlda(st, rptr_dorder);
        }
        else if (DrpDwnSelectType.SelectedValue == "Certificates")
        {
            rptr_dorder.Visible = true;
            st = "select coin_type,qty,gold_price,tot_amt,convert(varchar(11),pur_date,106) as pur_date,gp_id from tbl_gold_purchase where pur_type='Certificate' and dealer_id=" + Session["dealer"].ToString() + " and status=0";
            obj.fill_rptr_ret_sqlda(st, rptr_dorder);
        }
        else
        {
            rptr_dorder.Visible = false;
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {

    }
}