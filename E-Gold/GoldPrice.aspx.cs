using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GoldPrice : System.Web.UI.Page
{
    string st = "";
    int x;
    SqlConnection cn;
    SqlCommand cm;
    SqlDataAdapter da;
    System.Data.DataSet ds;
    DataBaseOperations obj = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection();
        st = WebConfigurationManager.AppSettings["cn"];
        cn.ConnectionString = st;
        cn.Open();
    }
    protected void btn_view_Click(object sender, EventArgs e)
    {
        st = "SELECT gold_price,convert(varchar(11),ent_date,106) as ent_date FROM tbl_gold_price WHERE (ent_date BETWEEN convert(datetime,'" + txt_st_date.Text + "') AND convert(datetime, '" + txt_end_date.Text + "'))";
        cm = new SqlCommand(st, cn);
        ds = new DataSet();
        da = new SqlDataAdapter(cm);
        ds.Tables.Clear();
        da.Fill(ds, "tbl1");
        rptr_gold_price.DataSource = null;
        rptr_gold_price.DataBind();
        rptr_gold_price.DataSource = ds.Tables["tbl1"];
        rptr_gold_price.DataBind();
        ds.Dispose();
    }
}