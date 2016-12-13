using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminChngPwd : System.Web.UI.Page
{
    int x;
    string st = "";
    SqlConnection cn;
    SqlCommand cm;
    SqlDataReader dr;
    DataBaseOperations obj = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.ConnectDatabse();
        cn = new SqlConnection();
        st = WebConfigurationManager.AppSettings["cn"];
        cn.ConnectionString = st;
        cn.Open();

        if (Session["a_id"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        st = "select pwd from tbl_admin where pwd='" + TxtOldPwd.Text + "'";
        cm = new SqlCommand(st, cn);
        dr = cm.ExecuteReader();
        if (dr.Read())
        {
            dr.Dispose();
            st = "update tbl_admin set email_id='" + TxtAemailid.Text + "',pwd='" + TxtCnfrPwd.Text + "' where admin_id=" + Session["a_id"];
            cm = new SqlCommand(st, cn);
            x = cm.ExecuteNonQuery();
            if (x != 0)
            {
                Response.Write("<script>alert('updated successfull');</script>");
            }
        }
        else
        {
            lbl_display.Text = "Old Password Does Not Match";
            lbl_display.ForeColor = System.Drawing.Color.Red;
            TxtOldPwd.Text = "";
        }
    }
}