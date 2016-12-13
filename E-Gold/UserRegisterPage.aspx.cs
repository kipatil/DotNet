using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class UserRegisterPage : System.Web.UI.Page
{
    DataBaseOperations obj = new DataBaseOperations();
    static string query = "";
    SqlConnection db;
    SqlCommand cm;
    SqlDataReader Reader;
    SqlDataAdapter Adapter;
    DataSet DSet;
    string cn = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       obj.ConnectDatabse();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
       obj.InsertRecord(query = "Insert into tbl_user_reg(fname,dob,address,gender,state,city,zip,mob,email_id,pwd) OUTPUT Inserted.u_id values('" + name.Text + "', '" + dob.Text + "','" + address.Text + "','" + Request.Form["gender"].ToString() + "','" + state.Text + "','" + city.Text + "'," + zip.Text + ",'" + mobileno.Text + "','" + emailid.Text + "','" + password.Text + "')");
       if(obj.InsertRecord(query) == 1)
        {
              Response.Redirect("UserHomePage.aspx");
              Response.Write("<script>alert('Registration Successfull');</script>");
        }
        else
        {
            Response.Write("<script>alert('Operation Is Aborted...!');</script>");
        }
    }
}