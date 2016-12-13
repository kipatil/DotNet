using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Agent_AgentUpdateProfile : System.Web.UI.Page
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

        if (!IsPostBack)
        {
            st = "select ag_name,address,state,city,zip,mobile,email_id,pwd from tbl_ag_reg where ag_reg_id=" + Session["ag_id"];
            cm = new SqlCommand(st, cn);
            dr = cm.ExecuteReader();
            if (dr.Read())
            {
                name.Text = dr[0].ToString();
                address.Text = dr[1].ToString();
                state.Text = dr[2].ToString();
                city.Text = dr[3].ToString();
                zip.Text = dr[4].ToString();
                mobileno.Text = dr[5].ToString();
                emailid.Text = dr[6].ToString();
                password.Text = dr[7].ToString();
            }
            dr.Dispose();
        }
    }
    protected void btn_updateAgent_Click(object sender, EventArgs e)
    {
        st = "update tbl_ag_reg set ag_name='" + name.Text + "',address='" + address.Text + "',city='" + city.Text + "',state='" + state.Text + "',zip=" + zip.Text + ",mobile=" + mobileno.Text + ",email_id='" + emailid.Text + "',pwd='" + password.Text + "' where ag_reg_id=" + Session["ag_id"];
        cm = new SqlCommand(st, cn);
        x = cm.ExecuteNonQuery();
        if (x != 0)
        {
            lbl_display.Text = "Updated successfully";
            Response.Write("<script>alert('updated successfull');window.location.href='AgentHomePage.aspx';</script>");
            //Response.Redirect("AgentHomePage.aspx");
        }
    }
}