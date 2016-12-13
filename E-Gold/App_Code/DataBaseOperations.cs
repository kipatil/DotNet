using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for DataBaseOperations
/// </summary>
public class DataBaseOperations
{
    List<ListItem> list = new List<ListItem>();
   static SqlConnection db;
   static SqlCommand cm;
   static SqlDataAdapter sqlda;
   static SqlDataReader dr;
   static System.Data.DataSet ds = new DataSet();
   
   static int no;
   static string st = "";
   static string con = WebConfigurationManager.AppSettings["cn"];

        public SqlConnection ConnectDatabse()
        {
            con = WebConfigurationManager.AppSettings["cn"];
            db = new SqlConnection();
            db.ConnectionString = con;
            db.Open();
            return db;
            con = WebConfigurationManager.AppSettings["cn"];
            db = new SqlConnection(con);
        }
        
        public int InsertRecord(string st)
        {
            cm = new SqlCommand(st,db);
            cm.CommandType = CommandType.Text;
            cm.CommandText = st;
            no = cm.ExecuteNonQuery();
            return no;
        }

        public int UpdateRecord(string st)
        {
            cm = new SqlCommand(st,db);
            no = cm.ExecuteNonQuery();
            return no;
        }

        public int DeleteRecord(string st)
        {
            cm = new SqlCommand(st, db);
            no = cm.ExecuteNonQuery();
            return no;
        }
        public SqlDataReader ShowOneRecord(string st)
        {
            cm = new SqlCommand(st,db);
            dr = cm.ExecuteReader();
            return dr;
        }

        public DataSet ShowAllRecord(string st,string tblName)
        {
            cm = new SqlCommand(st, db);
            sqlda = new SqlDataAdapter(cm);
            sqlda.Fill(ds,"tbl");
            return ds;
        }
        public static int Getrec(string st)
        {
            try
            {
                cm = new SqlCommand(st, db);
                no = (int)cm.ExecuteScalar();
                return no;
            }
            catch (Exception ex)
            {

                return no = 0;
            }
        }

        public static int DeltRec(string st)
        {
            try
            {
                cm = new SqlCommand(st, db);
                no = cm.ExecuteNonQuery();
                return no;
            }
            catch (Exception ex)
            {

                return no = 0;
            }
        }
        public static SqlDataReader ReadData(string st)
        {  
            cm = new SqlCommand(st, db);
            dr = cm.ExecuteReader();
            return dr;

        }

        public static DataSet D_set(string st, string tname)
        {

           
            cm = new SqlCommand(st, db);
            sqlda = new SqlDataAdapter(cm);
            ds = new DataSet();
            sqlda.Fill(ds, tname);
            return ds;

        }

        public static int ScalarFunctions(string st)
        {
            try
            {
               
                cm = new SqlCommand(st, db);
                Object Scalar = cm.ExecuteScalar();
                no = Convert.ToInt32(Scalar.ToString());
                return no + 1;
            }
            catch (Exception ex)
            {
                no = 1;
                return no;
            }
        }

        public static int ScalarFunctionsSumMinMax(string st)
        {
            try
            {
               
                cm = new SqlCommand(st, db);
                Object Scalar = cm.ExecuteScalar();
                no = Convert.ToInt32(Scalar.ToString());
                return no;
            }
            catch (Exception ex)
            {
                no = 0;
                return no;
            }
        }
        public SqlDataReader fill_dropdown(string st, DropDownList drop)
        {
            try
            {

                cm = new SqlCommand(st, db);
                dr = cm.ExecuteReader();
                if (dr.HasRows == true)
                {
                    while (dr.Read() == true)
                    {
                        if (dr[0].ToString().Trim() != "" || dr[0].ToString().Trim().Length != 0)
                        {
                            drop.Items.Add(dr[0].ToString().Trim());
                        }
                    }

                }
                dr.Dispose();
            }
            catch (Exception) { }
            return dr;
            dr.Close();
        }
        public SqlDataAdapter fill_rptr_ret_sqlda(string st, Repeater r1)
        {
            try
            {
                cm = new SqlCommand(st, db);
                sqlda = new SqlDataAdapter(cm);
                ds = new DataSet();
                ds.Tables.Clear();
                sqlda.Fill(ds, "tbl");
                r1.DataSource = null;
                r1.DataBind();
                r1.DataSource = ds.Tables["tbl"];
                r1.DataBind();
                db.Close();
            }
            catch (Exception) { }
            return sqlda;
        }
        public void fill_drop_with_id(string st, DropDownList drop)
        {
            try
            {
                if (db.State == ConnectionState.Closed)
                { db.Open(); }
                cm = new SqlCommand(st, db);
                dr = cm.ExecuteReader();
                //try
                //{
                list.Clear();
                drop.Items.Clear();
                //}
                //catch (Exception ex) { } 
                while (dr.Read() == true)
                {
                    if (dr[1].ToString() != "" || dr[1].ToString().Length != 0)
                    {
                        list.Add(new ListItem(dr[1].ToString(), dr[0].ToString()));
                    }
                }
                drop.DataSource = list;
                drop.DataTextField = "Text";
                drop.DataValueField = "Value";
                drop.DataBind();
                drop.Items.Insert(0, "Select");
                dr.Dispose();
            }
            catch (Exception) { }
            db.Close();
        }
        public SqlDataReader readall(string st)
        {
            try
            {
                if (db.State == ConnectionState.Closed)
                { db.Open(); }
                cm = new SqlCommand(st, db);
                dr = cm.ExecuteReader();
            }
            catch (Exception) { }
            return dr;
        }
        public string read_val(string st)
        {
            string val = "";
            try
            {
                dr = readall(st);
                if (dr.Read() == true)
                {
                    val = dr[0].ToString();
                }
                dr.Dispose();
            }
            catch (Exception) { }
            return val;
            db.Close();
        }
}