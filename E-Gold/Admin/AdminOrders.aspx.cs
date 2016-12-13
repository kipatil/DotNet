using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminOrders : System.Web.UI.Page
{
    string st = "";
    SqlConnection cn;
    SqlCommand cm;
    SqlDataAdapter da;
    SqlDataReader dr;
    DataSet ds;
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
            DrpdwnType.Items.Add("--Select Type--");
            DrpdwnType.Items.Add("Gold-Coin");
            DrpdwnType.Items.Add("Certificate");
        }
        btn_pur.Visible = false;
    }
    protected void DrpdwnType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DrpdwnType.SelectedValue == "Gold-Coin")
        {
            rptr_sale_order.Visible = true;
            //st = "select coin_type,qty,gold_price,tot_amt,convert(varchar(11),sale_date,106)as sale_date from tbl_gold_sale where sale_type="+Gold-Coin+"";
            st = "select coin_type,qty,gold_price,tot_amt,convert(varchar(11),sale_date,106)as sale_date,case status when 0 then 'Not assigned' when 1 then 'Assigned' when 2 then 'Delivered' end as status from tbl_gold_sale where sale_type='Gold Coin'";
            cm = new SqlCommand(st, cn);
            da = new SqlDataAdapter(cm);
            ds = new DataSet();
            ds.Tables.Clear();
            da.Fill(ds, "tbl1");
            rptr_sale_order.DataSource = ds.Tables["tbl1"];
            rptr_sale_order.DataBind();
            btn_pur.Visible = true;
        }
        else if (DrpdwnType.SelectedValue == "Certificate")
        {
            rptr_sale_order.Visible = true;
            st = "select coin_type,qty,gold_price,tot_amt,convert(varchar(11),sale_date,106)as sale_date,case status when 0 then 'Not assigned' when 1 then 'Assigned' when 2 then 'Delivered' end as status from tbl_gold_sale where sale_type='Certificate'";
            cm = new SqlCommand(st, cn);
            da = new SqlDataAdapter(cm);
            ds = new DataSet();
            ds.Tables.Clear();
            da.Fill(ds, "tbl1");
            rptr_sale_order.DataSource = ds.Tables["tbl1"];
            rptr_sale_order.DataBind();
            btn_pur.Visible = true;

        }
        else
        {
            rptr_sale_order.Visible = false;
        }
    }
    protected void btn_pur_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminGoldPurchase.aspx");
    }
}