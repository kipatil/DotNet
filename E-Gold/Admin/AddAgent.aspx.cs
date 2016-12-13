using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddAgent : System.Web.UI.Page
{
    int x;
    string st = "";
    SqlConnection cn;
    SqlCommand cm;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection();
        st = WebConfigurationManager.AppSettings["cn"];
        cn.ConnectionString = st;
        cn.Open();
        if (Session["a_id"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void btn_AddAgent_Click(object sender, EventArgs e)
    {
        st = "select email_id from tbl_ag_reg where email_id='" + emailid.Text + "'";
        cm = new SqlCommand(st, cn);
        dr = cm.ExecuteReader();
        if (dr.Read())
        {
            lbl_display.Text = "Email Already Registered";
            lbl_display.ForeColor = System.Drawing.Color.Red;
            
        }
        else
        {
            dr.Dispose();
            st = "insert into tbl_ag_reg(ag_name,address,city,state,zip,mobile,email_id,pwd) values ('" + name.Text + "','" + address.Text + "','" + city.Text + "','" + state.Text + "'," + zip.Text + "," + mobileno.Text + ",'" + emailid.Text + "','" +password.Text + "')";
            cm = new SqlCommand(st, cn);
            x = cm.ExecuteNonQuery();
            if (x == 1)
            {
                lbl_display.Text = "Registered sucessfully";
                lbl_display.ForeColor = System.Drawing.Color.Red;
                address.Text = name.Text = city.Text = emailid.Text = mobileno.Text = password.Text = state.Text = zip.Text = "";
            }
        }
    }
}