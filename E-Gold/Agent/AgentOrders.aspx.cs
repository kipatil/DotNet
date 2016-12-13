using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Agent_AgentOrders : System.Web.UI.Page
{
     SqlCommand cm;
    SqlDataAdapter da;
    SqlConnection cn;
    string st = "";
    DataBaseOperations obj3 = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        obj3.ConnectDatabse();
        if (Session["ag_id"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            fill_rpt();
        }
    }
    private void fill_rpt()
    {
        st = @"SELECT convert(varchar(11),tbl_agentorders.date) as date, tbl_gold_sale.qty, tbl_gold_sale.coin_type, tbl_gold_sale.sale_type, tbl_user_reg.address, tbl_user_reg.fname, tbl_user_reg.city, 
                         tbl_user_reg.zip, tbl_user_reg.mob, tbl_user_reg.state,tbl_gold_sale.gs_id 
                         FROM tbl_gold_sale INNER JOIN
                         tbl_agentorders ON tbl_gold_sale.gs_id = tbl_agentorders.gs_id INNER JOIN
                         tbl_user_reg ON tbl_gold_sale.user_id = tbl_user_reg.u_id where tbl_agentorders.agent_id=" + Session["ag_id"].ToString() + " and tbl_gold_sale.status=1";
        obj3.fill_rptr_ret_sqlda(st, rptr_dorder);

    }
    protected void delever_update(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        st = "update tbl_gold_sale set status=2 where gs_id=" + lnk.CommandArgument + "";
        obj3.UpdateRecord(st);
        fill_rpt();
    }
}