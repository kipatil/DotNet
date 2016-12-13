using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class My_Orders : System.Web.UI.Page
{
    string st = "";
    DataBaseOperations a = new DataBaseOperations();
    SqlCommand cm;
    SqlDataAdapter da;
    SqlConnection cn;

    protected void Page_Load(object sender, EventArgs e)
    {
        a.ConnectDatabse();
        cn = new SqlConnection();
        st = WebConfigurationManager.AppSettings["cn"];
        cn.ConnectionString = st;
        cn.Open();

        if (Session["u_id"] == null)
        {
            Response.Redirect("userloginpage.aspx");
        }
        if (!IsPostBack)
        {
            DrpDwnSelectType.Items.Add("--Select Type--");
            DrpDwnSelectType.Items.Add("Gold-Coin");
            DrpDwnSelectType.Items.Add("Certificate");
        }
    }
    protected void DrpDwnSelectType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DrpDwnSelectType.SelectedValue == "Gold-Coin")
        {
            rptr_sale_order.Visible = true;
            st = "select coin_type,qty,gold_price,tot_amt,convert(varchar(11),sale_date,106)as sale_date from tbl_gold_sale where sale_type='Gold Coin' and user_id=" + Session["u_id"];
            cm = new SqlCommand(st, cn);
            da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            ds.Tables.Clear();
            da.Fill(ds, "tbl_gold_s");
            rptr_sale_order.DataSource = ds.Tables["tbl_gold_s"];
            rptr_sale_order.DataBind();

        }
        else if (DrpDwnSelectType.SelectedValue == "Certificate")
        {
            rptr_sale_order.Visible = true;
            st = "select coin_type,qty,gold_price,tot_amt,convert(varchar(11),sale_date,106)as sale_date from tbl_gold_sale where sale_type='Certificate' and user_id=" + Session["u_id"];
            cm = new SqlCommand(st, cn);
            da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            ds.Tables.Clear();
            da.Fill(ds, "tbl1");
            rptr_sale_order.DataSource = ds.Tables["tbl1"];
            rptr_sale_order.DataBind();
        }
        else
        {
            rptr_sale_order.Visible = false;
        }
    }
}