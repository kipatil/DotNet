﻿using System;
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

public partial class UserUpdateProfile : System.Web.UI.Page
{
    string cn, query, st;

    SqlConnection db;
    SqlCommand cm;
    SqlDataReader Reader;
    SqlDataReader dr1;
    SqlDataAdapter Adapter;
    DataSet DSet;
     DataBaseOperations obj = new DataBaseOperations();
       
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.ConnectDatabse();
        db = new SqlConnection();
        cn = WebConfigurationManager.AppSettings["cn"];
        db.ConnectionString = cn;
        db.Open();
        Response.Write(db.State.ToString());
       
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (name.Text != "" && pwd.Text != "")
        {
            SqlDataReader dr = (DataBaseOperations.ReadData("Select email_id,pwd From tbl_user_reg Where email_id='" + name.Text + "' and pwd=" + pwd.Text + ""));
            if (dr.Read() == true)
            {
                    Session.Clear();
                    Session["u_id"] = dr[0].ToString();

                    
                    st = "select u_id,fname,email_id,mob from tbl_user_reg where email_id='" + name.Text + "' and pwd='" + pwd.Text + "'";
                    cm = new SqlCommand(st, db);
                    dr1 = cm.ExecuteReader();
                    if (dr1.Read() == true)
                    {
                        Session.Clear();
                        Session["u_id"] = dr1[0].ToString();
                        Session["fname"] = dr1[1].ToString();
                        Session["email_id"] = dr1[2].ToString();
                        Session["mobile"] = dr1[3].ToString();
                    }
                    dr1.Close();
                Response.Redirect("UserHomePage.aspx");
                dr.Close();

                //if (chkRemPwd.Checked == true)
                //{
                //    Response.Cookies["uname"].Value = name.Text;
                //    Response.Cookies["password"].Value = pwd.Text;
                //    Response.Cookies["uname"].Expires = DateTime.Now.AddMonths(1);
                //    Response.Cookies["password"].Expires = DateTime.Now.AddMonths(1);
                //    Response.Write("Email-Id and Password are stored in the memory");
                //}
            }
            else { Response.Write("<script>alert('Invalid UserName And Password');</script>"); }
        }
        else
        {
            Response.Write("<script>alert('UserName And Password Should Not Be Blank');</script>");
        }
    }
}