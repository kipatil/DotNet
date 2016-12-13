using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_feedback : System.Web.UI.Page
{
    string st = "";
    DataBaseOperations abc = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        abc.ConnectDatabse();
        if (Session["u_id"] == null)
        {
            Response.Redirect("userloginpage.aspx");
        }
    }
    protected void BtnFeedBSend_Click(object sender, EventArgs e)
    {
        st = "insert into tbl_feeds(title,feed,userid) values('" + TxtSubj.Text + "','" + TxtFeedback.Text + "'," + Session["u_id"].ToString() + ")";
        int x = abc.InsertRecord(st);
        if (x > 0)
        {
            lbl_msg.Text = "Feedback sent";
        }
    }
}