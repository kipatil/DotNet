using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_AddDealer : System.Web.UI.Page
{
    string st = "";
    SqlConnection cn;
    SqlCommand cm;
    SqlDataReader dr;
    DataBaseOperations obj = new DataBaseOperations();
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
    protected void btn_updateDealer_Click(object sender, EventArgs e)
    {
        st = "select email_id from tbl_dealer_reg where email_id='" + emailid.Text + "'";
        cm = new SqlCommand(st, cn);
        dr = cm.ExecuteReader();
        if (dr.Read())
        {
            lbl_display.Text = "Email Id already Exists !";
            lbl_display.ForeColor = System.Drawing.Color.Red;
            emailid.Text = "";
        }
        else
        {
            dr.Dispose();
            st = "insert into tbl_dealer_reg(fname,lname,address,city,state,pincode,mobile,email_id,pwd) values('" + fname.Text + "','" + lname.Text + "','" + address.Text + "','" + city.Text + "','" + state.Text + "'," + zip.Text + "," + mobileno.Text + ",'" + emailid.Text + "','" + password.Text + "')";
            cm = new SqlCommand(st, cn);
            int x = cm.ExecuteNonQuery();
            if (x == 1)
            {
                lbl_display.Text = "Registered Sucessfully";
                lbl_display.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}