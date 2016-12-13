using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dealer_DealerUpdateRecord : System.Web.UI.Page
{
    int x;
    string st = "";
    SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-7EAJCLN\SQLEXPRESS;Initial Catalog=gold;Integrated Security=True");
    SqlCommand cm;
    SqlDataReader dr;
    DataBaseOperations obj = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (cn.State == ConnectionState.Open)
        {
            cn.Close();
        }
        cn.Open();
 
        if (Session["dealer"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            st = "select fname,lname,address,city,state,pincode,mobile,email_id,pwd from tbl_dealer_reg where dealer_id=" + Session["dealer"];
            cm = new SqlCommand(st, cn);
            dr = cm.ExecuteReader();
            if (dr.Read())
            {
                fname.Text = dr[0].ToString();
                lname.Text = dr[1].ToString();
                address.Text = dr[2].ToString();
                city.Text = dr[3].ToString();
                state.Text = dr[4].ToString();
                zip.Text = dr[5].ToString();
                mobileno.Text = dr[6].ToString();
                emailid.Text = dr[7].ToString();
                password.Text = dr[8].ToString();
            }
            dr.Dispose();
        }
    }
    protected void btn_updateDealer_Click(object sender, EventArgs e)
    {
        st = "update tbl_dealer_reg set fname='" + fname.Text + "',lname='" + lname.Text + "',address='" + address.Text + "',city='" + city.Text + "',state='" + state.Text + "',pincode=" + zip.Text + ",mobile=" + mobileno.Text + ",email_id='" + emailid.Text + "',pwd='" + password.Text + "' where dealer_id=" + Session["dealer"];
        cm = new SqlCommand(st, cn);
        x = cm.ExecuteNonQuery();
        if (x != 0)
        {
            lbl_display.Text = "Registered Sucessfully";
                lbl_display.ForeColor = System.Drawing.Color.Red;
                Response.Write("<script>alert('updated successfully');window.location.href='DealerHomePage.aspx';</script>");
        }
    }
}