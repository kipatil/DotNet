using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ViewFeedback : System.Web.UI.Page
{
    string st = "";
    DataBaseOperations db = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        db.ConnectDatabse();
        if (!IsPostBack)
        {
            st = @"SELECT     tbl_feeds.feed, tbl_feeds.title, convert(varchar(11),tbl_feeds.date) as date, tbl_feeds.feed_id, tbl_user_reg.fname
FROM         tbl_feeds INNER JOIN
                      tbl_user_reg ON tbl_feeds.userid = tbl_user_reg.u_id";
            db.fill_rptr_ret_sqlda(st, rptr_ac_view);
        }
    }
}