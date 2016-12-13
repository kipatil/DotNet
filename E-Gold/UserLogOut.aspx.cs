using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserLogOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Time_Tick(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("userloginpage.aspx");
    }
}