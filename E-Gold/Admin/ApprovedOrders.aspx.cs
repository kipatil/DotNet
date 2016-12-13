using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ApprovedOrders : System.Web.UI.Page
{
    string st = "";
    DataBaseOperations db = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        db.ConnectDatabse();
        if (!IsPostBack)
        {
            st = "select dealer_id,fname+''+lname from tbl_dealer_reg";
            db.fill_drop_with_id(st, DrpdwnType);
        }
    }
    private void fill_rpt()
    {
        st = @"SELECT        gp_id,tbl_dealer_reg.fname + ' ' + tbl_dealer_reg.lname AS name, tbl_gold_purchase.pur_type, tbl_gold_purchase.coin_type, tbl_gold_purchase.qty, 
                         tbl_gold_purchase.gold_price, tbl_gold_purchase.tot_amt, convert(varchar(11),tbl_gold_purchase.pur_date) as pur_date, 
                         CASE tbl_gold_purchase.status WHEN 0 THEN 'pending' ELSE 'approved' END AS status
FROM            tbl_gold_purchase INNER JOIN
                         tbl_dealer_reg ON tbl_gold_purchase.dealer_id = tbl_dealer_reg.dealer_id where tbl_gold_purchase.dealer_id=" + DrpdwnType.SelectedValue + "";
        db.fill_rptr_ret_sqlda(st, rptr_dorder);
    }
    protected void DrpdwnType_SelectedIndexChanged(object sender, EventArgs e)
    {
        fill_rpt();
    }
}