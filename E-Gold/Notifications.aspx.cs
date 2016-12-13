using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Notifications : System.Web.UI.Page
{
    string st = "";
    DataBaseOperations db = new DataBaseOperations();

    protected void Page_Load(object sender, EventArgs e)
    {
        db.ConnectDatabse();
        if (!IsPostBack)
        { fill_rpt(); }
            
    }
    private void fill_rpt()
    {
        st = "select title,notification,notification_id,convert(varchar(11),date) as date from tbl_notification";
        db.fill_rptr_ret_sqlda(st, Repeater1);
    }
    
}