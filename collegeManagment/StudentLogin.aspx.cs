using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace collegeManagment
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        SqlConnection connection;
        SqlCommand com;
        SqlDataReader reader;
        string connectionString = ConfigurationManager.AppSettings["mydb"];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            // Insert data into the database
            string query = @"select id,studentname,email,college,branch,collegeid,depid from studentregdb where email=@collegecode and password=@password";
            com = new SqlCommand(query, connection);
            com.Parameters.AddWithValue("@collegecode", txtcollegeid.Text.ToString());
            com.Parameters.AddWithValue("@password", txtpassword.Text.ToString());
            DataSet ds = new DataSet();
            SqlDataAdapter sdk = new SqlDataAdapter(com);
            sdk.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["studname"] = ds.Tables[0].Rows[0]["studentname"].ToString();
                Session["studid"] = ds.Tables[0].Rows[0]["id"].ToString();
                Session["studmail"] = ds.Tables[0].Rows[0]["email"].ToString();
                Session["studcollege"] = ds.Tables[0].Rows[0]["college"].ToString();
                Session["branch"]= ds.Tables[0].Rows[0]["branch"].ToString();
                Session["collegeid"]= ds.Tables[0].Rows[0]["collegeid"].ToString();
                Session["depid"]= ds.Tables[0].Rows[0]["depid"].ToString();
                Response.Redirect("studentpanel.aspx");
            }
            else
            {
                Response.Write(@"<script> 
                    alert('Invalid College Code /or Password')</script>");
            }

        }

        protected void btnaccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentreg.aspx");
        }
    }
}