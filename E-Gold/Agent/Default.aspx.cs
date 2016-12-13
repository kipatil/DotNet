using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
using System.Data.SqlTypes;
using System.Web.Configuration;

public partial class log1 : System.Web.UI.Page
{
    string cn, query;

    SqlConnection db;
    SqlCommand cm;
    SqlDataReader Reader;
    SqlDataAdapter Adapter;
    DataSet DSet;
    DataBaseOperations obj = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.ConnectDatabse();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (name.Text != "" && pwd.Text != "")
        {
            SqlDataReader dr = (DataBaseOperations.ReadData("Select ag_reg_id,ag_name,email_id,pwd from tbl_ag_reg Where email_id='" + name.Text + "' and pwd='" + pwd.Text + "'"));
            if (dr.Read())
            {
                Session["ag_id"] = dr[0].ToString();
                Session["ag_name"] = dr[1].ToString();
                Response.Redirect("AgentHomePage.aspx");
                dr.Close();
            }
            else { Response.Write("<script>alert('Invalid UserName And Password');</script>"); }
        }
        else
        {
            Response.Write("<script>alert('UserName And Password Should Not Be Blank');</script>");
        }
    }
}