using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminOrderDetails : System.Web.UI.Page
{
    string st = "";
    SqlConnection cn;
    SqlCommand cm;
    SqlDataReader dr;
    DataBaseOperations obj = new DataBaseOperations();
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.ConnectDatabse();
        if (!IsPostBack)
        {
            fill_rpt();
            st = "select ag_reg_id,ag_name+'('+city+')'  from tbl_ag_reg";
            obj.fill_drop_with_id(st, ddl_worker);

        }
    }
    private void fill_rpt()
    {
        st = @"SELECT tbl_user_reg.fname, tbl_gold_sale.gs_id, tbl_gold_sale.sale_type, tbl_gold_sale.coin_type, tbl_gold_sale.qty, tbl_gold_sale.gold_price, tbl_gold_sale.tot_amt, 
                         convert(varchar(11),tbl_gold_sale.sale_date) as sale_date
FROM tbl_gold_sale INNER JOIN
                         tbl_user_reg ON tbl_gold_sale.user_id = tbl_user_reg.u_id where status=0";
        obj.fill_rptr_ret_sqlda(st, rptr_dorder);
    }
    protected void assign_click(object sender, EventArgs e)
    {
        st = "insert into tbl_agentorders(agent_id,status,gs_id,date) values(" + ddl_worker.SelectedValue + ",0," + ViewState["gs_id"].ToString() + ",'" + txt_date.Text + "')";
        int x = obj.InsertRecord(st);
        if (x > 0)
        {
            st = "update tbl_gold_sale set status=1 where gs_id=" + ViewState["gs_id"].ToString() + "";
            obj.UpdateRecord(st);
            st = "update tbl_coins set stock=stock-" + ViewState["qty"] + " where coin_amt=" + ViewState["ct"].ToString() + "";
            obj.UpdateRecord(st);
            fill_rpt();

            st = @"SELECT        tbl_user_reg.fname, tbl_user_reg.mob, tbl_user_reg.email_id, tbl_gold_sale.sale_type, tbl_gold_sale.coin_type, tbl_gold_sale.qty
FROM            tbl_gold_sale INNER JOIN
                         tbl_user_reg ON tbl_gold_sale.user_id = tbl_user_reg.u_id where tbl_gold_sale.gs_id=" + ViewState["gs_id"].ToString() + "";
            dr = obj.readall(st);
            if (dr.Read())
            {
                //System.Net.Mail.MailMessage msg = new MailMessage();
                //msg.From = new MailAddress("email@gmail.com");
                //msg.To.Add(dr[2].ToString());
                //msg.Subject = "Hello " + dr[2].ToString() + ", Delivery of Gold.";
                //string mail_body = "Gold Type: " + dr[3].ToString() + "<br/>Coins of: " + dr[4].ToString() + "<br/>Qty: " + dr[5].ToString() + "<br/>Delevery date:" + txt_date.Text + "";
                //AlternateView html_mail = AlternateView.CreateAlternateViewFromString(mail_body, null, "text/html");


                //msg.AlternateViews.Add(html_mail);
                //SmtpClient smtp = new SmtpClient();
                //smtp.Host = "smtp.gmail.com";
                //smtp.Port = 587;
                //smtp.Credentials = new System.Net.NetworkCredential("email@gmail.com", "password");
                //smtp.EnableSsl = true;
                //smtp.Send(msg);
                //msg = null;
                Response.Write("Mail Sent Successully");
            }
            //SEND MESSAGE AND MAIL TO USER


        }
    }

    protected void assign_agent(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        ViewState["gs_id"] = lnk.CommandArgument;
        RepeaterItem row = (RepeaterItem)(((Control)sender).NamingContainer);
        HiddenField hf_qty = (HiddenField)row.FindControl("hf_qty");
        HiddenField hf_cointype = (HiddenField)row.FindControl("hf_cointype");
        ViewState["qty"] = hf_qty.Value;
        ViewState["ct"] = hf_cointype.Value;

        st = "select stock from tbl_coins where coin_amt=" + ViewState["ct"].ToString() + " and stock > " + hf_qty.Value + "";
        string stock = obj.read_val(st);
        if (stock.Length > 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "dialog()", true);
        }
        else
        {
            Response.Write("<Script>alert('Stock not available.')</script>");
        }
    }
}