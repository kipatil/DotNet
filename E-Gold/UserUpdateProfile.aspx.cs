using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserUpdateProfile : System.Web.UI.Page
{
    string st;
    int x;
    SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-7EAJCLN\SQLEXPRESS;Initial Catalog=gold;Integrated Security=True");
    SqlCommand cm;
    SqlDataReader dr1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (cn.State == ConnectionState.Open) 
        {
            cn.Close();
        }
        cn.Open();

        if (Session["u_id"] == null)
        {
            Response.Redirect("userloginpage.aspx");
        }

        if (!IsPostBack)
        {
            st = "select fname,dob,address,state,city,zip,mob,email_id,pwd from tbl_user_reg where u_id="+ Session["u_id"];
            cm = new SqlCommand(st,cn);
            dr1 = cm.ExecuteReader();
            if (dr1.Read())
            {
                name.Text = dr1[0].ToString();
                
                dob.Text = dr1[1].ToString();
                address.Text = dr1[2].ToString();
                state.Text = dr1[3].ToString();
                city.Text = dr1[4].ToString();
                zip.Text = dr1[5].ToString();
                mobileno.Text = dr1[6].ToString();
                emailid.Text = dr1[7].ToString();
                password.Text = dr1[8].ToString();
            }
            dr1.Dispose();
        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        st = "update tbl_user_reg set fname='" + name.Text + "',dob='" + dob.Text + "',address='" + address.Text + "',state='" + state.Text + "',city='" + city.Text + "',zip=" + zip.Text + ",mob=" + mobileno.Text + ",email_id='" +emailid.Text + "',pwd='" +password.Text + "' where u_id = " + Session["u_id"];
        cm = new SqlCommand(st,cn);
        x = cm.ExecuteNonQuery();
        if (x != 0)
        {
            lbl_display.Text = "Updated successfully";
            //Response.Redirect("UserHomePage.aspx");
            Response.Write("<script>alert('Updated SuccessFully');window.loation.href('UserHomePage.aspx');</script>");
        }
    }
}