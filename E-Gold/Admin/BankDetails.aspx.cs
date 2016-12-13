using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_BankDetails : System.Web.UI.Page
{
    string st = "";
    SqlConnection cn;
    SqlCommand cm;
    SqlDataAdapter da;
    System.Data.DataSet ds;
    DataBaseOperations obj = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.ConnectDatabse();
        cn = new SqlConnection();
        st = WebConfigurationManager.AppSettings["cn"];
        cn.ConnectionString = st;
        cn.Open();
    }

    protected void BtnActView_Click(object sender, EventArgs e)
    {
        st = "select case when credit is null then '-' else convert(varchar,credit) end as credit,case when debit is null then '-' else convert(varchar,debit) end as debit,case when from_agent is null then '-' else convert(varchar,from_agent) end as from_agent,case when to_dealer is null then '-' else convert(varchar,to_dealer) end as to_dealer,convert(varchar(11),date,106) as date,balance from tbl_bankac";
        cm = new SqlCommand(st, cn);
        ds = new DataSet();
        da = new SqlDataAdapter(cm);
        ds.Tables.Clear();
        da.Fill(ds, "tbl1");
        rptr_ac_view.DataSource = null;
        rptr_ac_view.DataSource = ds.Tables["tbl1"];
        rptr_ac_view.DataBind();
    }
}